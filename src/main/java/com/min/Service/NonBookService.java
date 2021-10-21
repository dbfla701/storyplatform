package com.min.Service;

import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

public interface NonBookService {
    List<HashMap<String, Object>> test();
    HashMap<String, Object> uploadExcel(MultipartFile file) throws IOException;

    List<HashMap<String, Object>> pageList(Integer paging , int PAGE_NUM );

    HashMap<String, Object> toCurrent(Integer pageV, int PAGE_NUM);

    Integer count();

    void delete(Integer bookId);

    boolean searchValidate(String whatKey);
}
