package com.rzlyxw.ym.transaction.service;


import com.rzlyxw.ym.transaction.domain.YmUser;
import com.rzlyxw.ym.transaction.dto.ComResult;
import com.rzlyxw.ym.transaction.dto.PageInfo;

import java.util.Map;

public interface UserService {
    YmUser login(String phone, String password);

    void register(String realname,String phone,String username,String password);

    boolean verPhone(String phone);

    PageInfo<YmUser> page(int draw, int start, int length, YmUser user);

    void delete(Long id);

    void save(YmUser user);

    YmUser getById(Long id);

    void deleteMulti(Integer[] ids);

    ComResult updateInfo(YmUser YmUser);

    ComResult checkYmUser(YmUser YmUser);

    void deleteSelected(String[] sIds);

    int getUserCount();
}
