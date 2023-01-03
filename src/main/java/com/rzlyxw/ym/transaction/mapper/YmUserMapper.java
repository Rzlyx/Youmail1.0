package com.rzlyxw.ym.transaction.mapper;

import com.rzlyxw.ym.transaction.domain.YmUser;
import tk.mybatis.MyMapper;

import java.util.List;
import java.util.Map;

public interface YmUserMapper extends MyMapper<YmUser> {
    /**
     * 查询用户
     * @param phone
     * @return
     */
    YmUser getByPhone(String phone);

    YmUser getByUsername(String username);

    List<YmUser> page(Map<String,Object> params);

    void deleteMulti(Integer[] ids);

    int getUserCount();
}