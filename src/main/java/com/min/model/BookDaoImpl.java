package com.min.model;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;


@Repository
public class BookDaoImpl implements BookDao {

    private final String NS = "sqlmap.example.BookMapper.";

    @Autowired
    private SqlSessionTemplate session;


    @Override
    public List<HashMap<String, Object>> test() {
        return session.selectList(NS + "testArtTable");
    }

    @Override
    public void save(HashMap<String, Object> map) {
        session.insert(NS + "insert", map);
    }

    @Override
    public List<HashMap<String, Object>> topTakeList(Integer num, int PAGE_NUM) {
        int validNum = num < 1 ? 1 : num;
        return session.selectList(NS + "topTakeList",
                Maps.newHashMap(
                        ImmutableMap.<String, Object>builder()
                                .put("start", ((validNum - 1) * PAGE_NUM) + 1)
                                .put("end", (validNum) * PAGE_NUM)
                                .build()
                )
        );
    }

    @Override
    public Object searchPageList(Integer num, int pageNum, String whatKey, String keyword) {
        int validNum = num < 1 ? 1 : num;
        return session.selectList(NS +
                "searchPageList", Maps.newHashMap(
                ImmutableMap.of(
                        "start", ((validNum - 1) * pageNum) + 1,
                        "end", (validNum) * pageNum,
                        "what", whatKey,
                        "keyword", keyword)));
    }


    @Override
    public Integer count() {
        return session.selectOne(NS + "count");
    }

    @Override
    public int searchCount(String whatKey, String keyword) {
        return session.selectOne(NS + "searchCount", Maps.newHashMap(
                ImmutableMap.of("what", whatKey, "keyword", keyword)));
    }

    @Override
    public void delete(Integer bookId) {
        session.delete(NS + "delete", bookId);
    }

    @Override
    public List<HashMap<String, Object>> searchKeyword(String whatKey, String keyword) {
        return session.selectList(NS +
                "searchKeyword", Maps.newHashMap(
                ImmutableMap.of("what", whatKey, "keyword", keyword)));
    }


}
