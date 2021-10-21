package com.min.model;

import java.util.HashMap;
import java.util.List;

public interface BookDao {
    List<HashMap<String, Object>> test();

    void save(HashMap<String, Object> map);

    List<HashMap<String, Object>> topTakeList(Integer num, int PAGE_NUM);

    Integer count();

    void delete(Integer bookId);

    List<HashMap<String, Object>> searchKeyword(String whatKey, String keyword);

    Object searchPageList(Integer page, int pageNum, String whatKey, String keyword);

    int searchCount(String whatKey, String keyword);
}
