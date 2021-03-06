package com.min.Controller;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.min.Service.NonBookService;
import com.min.util.AdminUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;

@RestController
@RequestMapping(value = "/non-book")
public class NonBookController {

    private final NonBookService nonBookService;
    private final AdminUtil adminUtil;
    static final int PAGE_NUM;

    static {
        PAGE_NUM = 10;
    }


    @Autowired
    public NonBookController(NonBookService nonBookService, AdminUtil adminUtil) {
        this.nonBookService = nonBookService;
        this.adminUtil = adminUtil;
    }


    @RequestMapping(value = "/upload.do", method = RequestMethod.POST)
    public HashMap<String, Object> excelled(
            @RequestParam(value = "file") MultipartFile file
    ) throws IOException {
        return nonBookService.uploadExcel(file);
    }


    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public HashMap<String, Object> nonBookList() {
        return Maps.newHashMap(ImmutableMap.<String, Object>builder()
                .put("code", "success")
                .put("select", nonBookService.test())
                .build()
        );
    }

    @RequestMapping(value = "/page/{page}/read.do", method = RequestMethod.GET)
    public HashMap<String, Object> toNonBookPage(
            @PathVariable(value = "page") Integer page
    ) {

        return Maps.newHashMap(ImmutableMap.<String, Object>builder()
                .put("code", "success")
                .put("page", nonBookService.pageList(page, PAGE_NUM))
                .build()
        );
    }


    @RequestMapping(value = "/page/{page}/current.do", method = RequestMethod.GET)
    public HashMap<String, Object> toNonCurrent(
            @PathVariable(value = "page") Integer page
    ) {
        return nonBookService.toCurrent(page, PAGE_NUM);
    }

    @RequestMapping(value = "/{bookId}/detail.do", method = RequestMethod.DELETE)
    public HashMap<String, Object> delete(@PathVariable(value = "bookId") Integer bookId, HttpServletRequest request) {
        // Admin ?????? not-admin ?????? ???????????? ???????????? ??????????????? !!!
        final String admin_name = adminUtil.getAdminName(request);

        if ("not-admin".equals(admin_name)) return Maps.newHashMap(ImmutableMap.of("code", "not-admin"));

        nonBookService.delete(bookId);

        return Maps.newHashMap(ImmutableMap.of("code", "delete", "who", bookId));
    }


    @RequestMapping(value = "/{what-key}/{keyword}/list.do", method = RequestMethod.GET)
    public HashMap<String, Object> search(
            @PathVariable(value = "what-key") String whatKey,
            @PathVariable(value = "keyword") String keyword
    ) {
        // validate code ?????????. ????????? query injection ????????? ??????????????????.
        if (nonBookService.searchValidate(whatKey))
            return Maps.newHashMap(ImmutableMap.of("code", "fail", "search", "??????"));


        return Maps.newHashMap(ImmutableMap.of("code", "success"));
    }

}
