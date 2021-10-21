package com.min.Service;

import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

public interface BookService {
    List<HashMap<String, Object>> test();

    HashMap<String, Object> uploadExcel(MultipartFile file) throws IOException;

    List<HashMap<String, Object>> pageList(Integer paging, int PAGE_NUM);

    Integer count();

    HashMap<String, Object> toCurrent(Integer page, int PAGE_NUM);

    void delete(Integer bookId);

    List<HashMap<String, Object>> searchKeyword(String whatKey, String keyword);

    boolean searchValidate(String whatKey);


    Object searchPageList(Integer page, int pageNum, String whatKey, String keyword);

    HashMap<String, Object> searchCurrent(Integer page, int pageNum, String whatKey, String keyword);
}
