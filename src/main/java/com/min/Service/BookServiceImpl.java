package com.min.Service;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.min.model.BookDao;
import com.min.util.PagingUtil;
import com.min.util.ExcelUtil;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.*;

@Service
public class BookServiceImpl implements BookService {


    // filter 아래 내용이 포함되면 제외합니다.
    static final List<String> countries;

    // filter 아래 내용이 포함되어야 합니다. 파악중 = 1, 구입후 보관중 = 2, 디지털자료 확보 = 3, 자료확보불가(절판등) = 4, 이외는 필터링
    static final List<String> categories;

    static {
        categories = new ArrayList<>(Arrays.asList(
                "파악중",
                "구입후 보관중",
                "디지털자료 확보",
                "자료확보불가(절판등)"
        ));
        countries = new ArrayList<>(Arrays.asList(
                "국가명", "3개국", "", null
        ));
    }


    @Autowired
    private BookDao bookDao;

    @Autowired
    private ExcelUtil excelUtil;

    @Autowired
    private PagingUtil pagingUtil;

    @Override
    public List<HashMap<String, Object>> test() {
        return bookDao.test();
    }


    private List<Map<String, String>> ExcelFilter(MultipartFile file) throws IOException {
        final Workbook workbook = excelUtil.ExcelReader(file);

        final Sheet worksheet = workbook.getSheetAt(0);

        List<HashMap<String, String>> result = new ArrayList<>();
        worksheet.forEach(
                x -> {
                    // 3 ~ 15, 7 제외
                    if (x.getCell(3) != null && x.getCell(4) != null &&
                            !countries.contains(x.getCell(3) + "") &&
                            categories.contains(x.getCell(4) + "")) {
                        result.add(Maps.newHashMap(ImmutableMap.<String, String>
                                        builder()
                                .put("COUNTRY", x.getCell(3) + "")
                                .put("IS_PURCHASE", x.getCell(4) + "")
                                .put("ONE_TAG", x.getCell(5) + "")
                                .put("THREE_TAG", x.getCell(6) + "")
                                .put("SMALL_TITLE", x.getCell(7) + "")
                                .put("BOOK_NAME", x.getCell(8) + "")
                                .put("BOOK_AUTHOR", x.getCell(9) + "")
                                .put("BOOK_PUBLISHER", x.getCell(10) + "")
                                .put("YEAR_OF_PUBLICATION", x.getCell(11) + "")
                                .put("COST", isNumeric(x.getCell(12) + "") ? String.valueOf((int) Double.parseDouble(x.getCell(12) + "")) : String.valueOf(0))
                                .put("ERA", x.getCell(13) + "")
                                .put("AGE", x.getCell(14) + "")
                                .build()
                        ));
                    }
                }
        );
        // 중복 제거
        final Set<Map<String, String>> set = new HashSet<>(result);
        return new ArrayList<>(set);
    }

    @Override
    public HashMap<String, Object> uploadExcel(MultipartFile file) throws IOException {
        final List<Map<String, String>> list = ExcelFilter(file);

        list.forEach(
                map -> insert((HashMap<String, String>) map)
        );

        return Maps.newHashMap(ImmutableMap.<String, Object>builder()
                .put("code", "upload")
                .put("where", "book")
                .put("select", list)
                .build()
        );
    }

    @Override
    public List<HashMap<String, Object>> pageList(Integer paging, int PAGE_NUM) {
        return bookDao.topTakeList(paging, PAGE_NUM);
    }


    @Override
    public Object searchPageList(Integer page, int pageNum, String whatKey, String keyword) {
        return bookDao.searchPageList(page, pageNum, whatKey, keyword);
    }


    private void insert(HashMap<String, String> preMap) {
        final HashMap<String, Object> map = Maps.newHashMap(ImmutableMap.<String, Object>builder()
                .put("COUNTRY", preMap.get("COUNTRY"))
                .put("IS_PURCHASE", "파악중".equals(preMap.get("IS_PURCHASE")) ? 1 :
                        "구입후 보관중".equals(preMap.get("IS_PURCHASE")) ? 2 :
                                "디지털자료 확보".equals(preMap.get("IS_PURCHASE")) ? 3 : 4
                )
                .put("ONE_TAG", preMap.get("ONE_TAG"))
                .put("THREE_TAG", preMap.get("THREE_TAG"))
                .put("SMALL_TITLE", preMap.get("SMALL_TITLE"))
                .put("BOOK_NAME", preMap.get("BOOK_NAME"))
                .put("BOOK_AUTHOR", preMap.get("BOOK_AUTHOR"))
                .put("BOOK_PUBLISHER", preMap.get("BOOK_PUBLISHER"))
                .put("YEAR_OF_PUBLICATION", preMap.get("YEAR_OF_PUBLICATION"))
                .put("COST", "".equals(preMap.get("COST") + "") ? 0 : isNumeric(preMap.get("COST") + "") ?
                        Integer.parseInt(preMap.get("COST") + "") : 0)
                .put("ERA", preMap.get("ERA"))
                .put("AGE", "".equals(preMap.get("AGE") + "") ? 0 : isNumeric(preMap.get("AGE") + "") ?
                        Integer.parseInt(preMap.get("AGE") + "") : 0)
                .build()
        );
        bookDao.save(map);
    }

    private boolean isNumeric(String input) {
        try {
            Double.parseDouble(input);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    @Override
    public Integer count() {
        return bookDao.count();
    }

    private int searchCount(String whatKey, String keyword) {
        return bookDao.searchCount(whatKey, keyword);
    }

    @Override
    public HashMap<String, Object> toCurrent(Integer pageV, int PAGE_NUM) {
        final int count = count();
        return pagingUtil.pagingMap(pageV, PAGE_NUM, count);
    }

    @Override
    public HashMap<String, Object> searchCurrent(Integer pageV, int PAGE_NUM, String whatKey, String keyword) {
        final int count = searchCount(whatKey, keyword);
        return pagingUtil.pagingMap(pageV, PAGE_NUM, count);
    }


    @Override
    public void delete(Integer bookId) {
        bookDao.delete(bookId);
    }

    @Override
    public List<HashMap<String, Object>> searchKeyword(String whatKey, String keyword) {

        return bookDao.searchKeyword(whatKey, keyword);
    }

    @Override
    public boolean searchValidate(String whatKey) {
        ArrayList<String> keywords = new ArrayList<>(Arrays.asList(
                "COUNTRY",
                "ONE_TAG",
                "THREE_TAG",
                "SMALL_TITLE",
                "BOOK_NAME",
                "BOOK_AUTHOR",
                "BOOK_PUBLISHER",
                "YEAR_OF_PUBLICATION",
                "COST",
                "ERA",
                "AGE",
                "ISBN"
        ));

        return !keywords.contains(whatKey);
    }


}
