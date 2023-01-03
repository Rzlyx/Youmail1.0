package com.rzlyxw.ym.transaction.mapper;

import com.rzlyxw.ym.transaction.domain.Category;
import tk.mybatis.MyMapper;

import java.util.List;
import java.util.Map;

public interface CategoryMapper extends MyMapper<Category> {
    List<Category> categoryPage(Map<String,Object> params);
}