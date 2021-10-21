package com.min.Service;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.min.model.NonBookDao;
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
public class NonBookServiceImpl implements NonBookService {
    @Autowired
    private NonBookDao nonBookDao;

    @Autowired
    private ExcelUtil excelUtil;

    @Autowired
    private PagingUtil pagingUtil;


    @Override
    public List<HashMap<String, Object>> test() {
        return nonBookDao.test();
    }

    // filter 아래 내용이 포함되면 제외합니다.
    static final List<String> countries;

    // filter 아래 내용이 포함되어야 제외합니다.
    static final List<String> categories;

    static {
        countries = new ArrayList<>(Arrays.asList(
                "국가명", "3개국", "", null
        ));
        categories = new ArrayList<>(Arrays.asList(
                "", null
        ));
    }

    private List<Map<String, String>> ExcelFilter(MultipartFile file) throws IOException {

        final Workbook workbook = excelUtil.ExcelReader(file);

        final Sheet worksheet = workbook.getSheetAt(0);


        List<HashMap<String, String>> result = new ArrayList<>();
        worksheet.forEach(
                x -> {
                    // 3 ~ 9 / 3은 국가, 6은 제목
                    if (x.getCell(3) != null && x.getCell(6) != null &&
                            !countries.contains(x.getCell(3) + "") &&
                            !categories.contains(x.getCell(6) + "")) {
                        result.add(Maps.newHashMap(ImmutableMap.<String, String>
                                        builder()
                                .put("COUNTRY", x.getCell(3) == null ? "" : x.getCell(3) + "")
                                .put("ONE_TAG", x.getCell(4) == null ? "" : x.getCell(4) + "")
                                .put("THREE_TAG", x.getCell(5) == null ? "" : x.getCell(5) + "")
                                .put("TITLE", x.getCell(6) == null ? "" : x.getCell(6) + "")
                                .put("SOURCE", x.getCell(7) == null ? "" : x.getCell(7) + "")
                                .put("ERA", x.getCell(8) == null ? "" : x.getCell(8) + "")
                                .put("USER_AGE", x.getCell(9) == null ? "" : x.getCell(9) + "")
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
                .put("where", "non-book")
                .put("select", list)
                .build()
        );
    }

    @Override
    public List<HashMap<String, Object>> pageList(Integer paging, int PAGE_NUM) {
        return nonBookDao.topTakeList(paging, PAGE_NUM);
    }


    private void insert(HashMap<String, String> preMap) {
        final HashMap<String, Object> map = Maps.newHashMap(ImmutableMap.<String, Object>builder()
                .put("COUNTRY", preMap.get("COUNTRY"))
                .put("ONE_TAG", preMap.get("ONE_TAG"))
                .put("THREE_TAG", preMap.get("THREE_TAG"))
                .put("TITLE", preMap.get("TITLE"))
                .put("SOURCE", preMap.get("SOURCE"))
                .put("ERA", preMap.get("ERA"))
                .put("USER_AGE", preMap.get("USER_AGE"))
                .build()
        );
        nonBookDao.save(map);
    }

    @Override
    public HashMap<String, Object> toCurrent(Integer pageV, int PAGE_NUM) {
        final int count = count();

        return pagingUtil.pagingMap(pageV, PAGE_NUM, count);
    }


    @Override
    public Integer count() {
        return nonBookDao.count();
    }


    @Override
    public void delete(Integer bookId) {
        nonBookDao.delete(bookId);
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
