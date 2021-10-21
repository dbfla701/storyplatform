package com.min.model;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository
public class NonBookDaoImpl implements NonBookDao {
    private final String NS = "sqlmap.example.NonBookMapper.";


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
    public Integer count() {
        return session.selectOne(NS + "count");
    }


    @Override
    public void delete(Integer bookId) {
        session.delete(NS + "delete", bookId);
    }

}
