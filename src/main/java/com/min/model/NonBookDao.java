package com.min.model;

import java.util.HashMap;
import java.util.List;

public interface NonBookDao {
    List<HashMap<String, Object>> test();

    void save(HashMap<String, Object> map);

    List<HashMap<String, Object>> topTakeList(Integer num, int PAGE_NUM);

    Integer count();

    void delete(Integer bookId);
}
