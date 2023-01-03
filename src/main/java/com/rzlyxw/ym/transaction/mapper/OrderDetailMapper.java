package com.rzlyxw.ym.transaction.mapper;

import com.rzlyxw.ym.transaction.domain.OrderDetail;
import tk.mybatis.MyMapper;

import java.util.List;

public interface OrderDetailMapper extends MyMapper<OrderDetail> {


    /**
     *获取订单项
     * @param orderId
     * @return
     */
    List<OrderDetail> getByOrderId(Long orderId);
}