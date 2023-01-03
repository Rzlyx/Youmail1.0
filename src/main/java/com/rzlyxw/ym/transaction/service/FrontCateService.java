package com.rzlyxw.ym.transaction.service;

import com.github.pagehelper.PageInfo;
import com.rzlyxw.ym.transaction.domain.Goods;
import com.rzlyxw.ym.transaction.dto.PageResult;

public interface FrontCateService {
    PageResult<Goods> goodsPage(int pageNum, Long categoryId);
}
