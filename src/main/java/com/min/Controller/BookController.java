package com.min.Controller;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.min.Service.BookService;
import com.min.util.AdminUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

@RestController
@RequestMapping(value = "/book")
public class BookController {

    private final BookService bookService;
    private final AdminUtil adminUtil;
    static final int PAGE_NUM;

    static {
        PAGE_NUM = 10;
    }

    @Autowired
    public BookController(BookService bookService, AdminUtil adminUtil) {
        this.bookService = bookService;
        this.adminUtil = adminUtil;
    }

    @RequestMapping(value = "/test.do", method = RequestMethod.GET)
    public HashMap<String, Object> test() {
        return Maps.newHashMap(ImmutableMap.<String, Object>builder()
                .put("code", "success")
                .put("select", bookService.test())
                .build()
        );
    }

    @RequestMapping(value = "/tt.do", method = RequestMethod.GET)
    public HashMap<String, Object> attest(
            @RequestParam("file") String file
    ) {
        return Maps.newHashMap(ImmutableMap.<String, Object>builder()
                .put("code", file)
                .build()
        );
    }

    @RequestMapping(value = "/upload.do", method = RequestMethod.POST)
    public HashMap<String, Object> excelled(
            @RequestParam(value = "file") MultipartFile file
    ) throws IOException {
        return bookService.uploadExcel(file);
    }

    @RequestMapping(value = "/page/{page}/read.do", method = RequestMethod.GET)
    public HashMap<String, Object> toPage(
            @PathVariable(value = "page") Integer page
    ) {
        return Maps.newHashMap(ImmutableMap.<String, Object>builder()
                .put("code", "success")
                .put("page", bookService.pageList(page, PAGE_NUM))
                .build()
        );
    }

    @RequestMapping(value = "/page/{page}/current.do", method = RequestMethod.GET)
    public HashMap<String, Object> toCurrent(
            @PathVariable(value = "page") Integer page
    ) {
        return bookService.toCurrent(page, PAGE_NUM);
    }

    @RequestMapping(value = "/{bookId}/detail.do", method = RequestMethod.DELETE)
    public HashMap<String, Object> delete(@PathVariable(value = "bookId") Integer bookId, HttpServletRequest request) {
        // Admin ?????? not-admin ?????? ???????????? ???????????? ??????????????? !!!
        final String admin_name = adminUtil.getAdminName(request);

        if ("not-admin".equals(admin_name)) return Maps.newHashMap(ImmutableMap.of("code", "not-admin"));

        bookService.delete(bookId);

        return Maps.newHashMap(ImmutableMap.of("code", "delete", "who", bookId));
    }

    @RequestMapping(value = "/{what-key}/{keyword}/list.do", method = RequestMethod.GET)
    public HashMap<String, Object> search(
            @PathVariable(value = "what-key") String whatKey,
            @PathVariable(value = "keyword") String keyword
    ) {
        // validate code ?????????. ????????? query injection ????????? ??????????????????.
        if (bookService.searchValidate(whatKey))
            return Maps.newHashMap(ImmutableMap.of("code", "fail", "search", "??????"));

        final List<HashMap<String, Object>> search = bookService.searchKeyword(whatKey, keyword);

        return Maps.newHashMap(ImmutableMap.of("code", "success", "search", search));
    }


    @RequestMapping(value = "/{what-key}/{keyword}/{page}/read.do", method = RequestMethod.GET)
    public HashMap<String, Object> searchToPage(
            @PathVariable(value = "what-key") String whatKey,
            @PathVariable(value = "keyword") String keyword,
            @PathVariable(value = "page") Integer page
    ) {
        // validate code ?????????. ????????? query injection ????????? ??????????????????.
        if (bookService.searchValidate(whatKey))
            return Maps.newHashMap(ImmutableMap.of("code", "fail", "search", "??????"));

        return Maps.newHashMap(ImmutableMap.<String, Object>builder()
                .put("code", "success")
                .put("page", bookService.searchPageList(page, PAGE_NUM, whatKey, keyword))
                .build()
        );
    }

    @RequestMapping(value = "/{what-key}/{keyword}/{page}/current.do", method = RequestMethod.GET)
    public HashMap<String, Object> searchToCurrent(
            @PathVariable(value = "what-key") String whatKey,
            @PathVariable(value = "keyword") String keyword,
            @PathVariable(value = "page") Integer page
    ) {
        // validate code ?????????. ????????? query injection ????????? ??????????????????.
        if (bookService.searchValidate(whatKey))
            return Maps.newHashMap(ImmutableMap.of("code", "fail", "search", "??????"));


        return bookService.searchCurrent(page, PAGE_NUM, whatKey, keyword);
    }

}
