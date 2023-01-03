package com.rzlyxw.ym.transaction.service.impl;

import com.rzlyxw.ym.transaction.domain.CategoryTwo;
import com.rzlyxw.ym.transaction.mapper.CategoryTwoMapper;
import com.rzlyxw.ym.transaction.service.CategoryTwoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CategoryTwoServiceImpl implements CategoryTwoService {
    @Resource
    private CategoryTwoMapper categoryTwoMapper;

    @Override
    public List<CategoryTwo> getAll() {
        return categoryTwoMapper.selectAll();
    }
}
