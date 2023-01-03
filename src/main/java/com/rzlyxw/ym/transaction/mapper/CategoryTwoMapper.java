package com.rzlyxw.ym.transaction.mapper;

import com.rzlyxw.ym.transaction.domain.CategoryTwo;
import tk.mybatis.MyMapper;

import java.util.List;

public interface CategoryTwoMapper extends MyMapper<CategoryTwo> {
    List<CategoryTwo> getByCategoryId(Long categoryId);
}