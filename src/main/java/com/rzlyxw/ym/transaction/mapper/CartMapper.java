package com.rzlyxw.ym.transaction.mapper;

import com.rzlyxw.ym.transaction.domain.Cart;
import org.apache.ibatis.annotations.Param;
import tk.mybatis.MyMapper;

import java.util.List;

public interface CartMapper extends MyMapper<Cart> {
    List<Cart> getByUserIdAndSellerId(@Param("userId") Long userId, @Param("seller") Long sellerId);

    List<Cart> getByUserId(Long userId);

    void deleteByUserIdAndGoodsId(@Param("userId") Long userId,@Param("goodsId") Long goodsId);
}