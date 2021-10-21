package com.min.util;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import org.springframework.stereotype.Service;

import java.util.HashMap;

@Service
public class PagingUtil {
    public HashMap<String, Object> pagingMap(Integer pageV, int PAGE_NUM, int count) {
        final int max = (count / PAGE_NUM) + 1;
        final int min = 1;
        final int page = pageV < min ? min : pageV > max ? max : pageV;

        final int cube = ((page - 1) / 5) * 5;
        final int pageFirst = cube + 1;
        final int page2st = cube + 2;
        final int page3st = cube + 3;
        final int page4st = cube + 4;
        final int page5st = cube + 5;


        return Maps.newHashMap(ImmutableMap.<String, Object>builder()
                .put("code", "success")
                .put("count", count)
                .put("max", max)
                .put("min", min)
                .put("current", page)
                .put("pageFirst", pageFirst)
                .put("page2st", page2st > max ? "" : page2st)
                .put("page3st", page3st > max ? "" : page3st)
                .put("page4st", page4st > max ? "" : page4st)
                .put("page5st", page5st > max ? "" : page5st)
                .build()
        );
    }
}
