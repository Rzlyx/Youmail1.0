package com.rzlyxw.ym.transaction.mapper;

import com.rzlyxw.ym.transaction.domain.ShopOrder;
import tk.mybatis.MyMapper;

import java.util.List;
import java.util.Map;

public interface ShopOrderMapper extends MyMapper<ShopOrder> {
    List<ShopOrder> orderPage(Map<String,Object> params);
}