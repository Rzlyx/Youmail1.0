package com.rzlyxw.ym.transaction.service;

import com.rzlyxw.ym.transaction.domain.CategoryTwo;

import java.util.List;

public interface CategoryTwoService {
    /**
     * 查询所有子分类
     *
     * @return
     */
    List<CategoryTwo> getAll();
}
