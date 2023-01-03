package com.rzlyxw.ym.transaction.service;

import com.rzlyxw.ym.transaction.domain.Seller;
import com.rzlyxw.ym.transaction.dto.PageInfo;

import java.util.Map;

public interface SellerService {
    Seller seller(Long id);

    PageInfo<Seller> page(int draw, int start, int length, Seller seller);

    void save(Seller seller);

    Seller getById(Long id);

    Seller login(String phone, String password);

    void register(String realname,String phone,String city,String password);

    void delete(Long id);

    void delSelected(String[] sIds);

    int getSellerCount();

    String getReputation(Long id);
}
