package com.rzlyxw.ym.transaction.service;

import com.rzlyxw.ym.transaction.domain.Category;
import com.rzlyxw.ym.transaction.dto.PageInfo;

import java.util.List;

public interface CategoryService {
    Category showCategory(Long id);

    PageInfo<Category> page(int draw, int start, int length, Category category);

    void save(Category category);

    Category getById(Long id);

    void deleteOne(int id);

    List<Category> categoryList();

    void deleteSelected(String[] sIds);
}