package com.rzlyxw.ym.transaction.mapper;

import com.rzlyxw.ym.transaction.domain.Admin;
import tk.mybatis.MyMapper;

public interface AdminMapper extends MyMapper<Admin> {
    Admin getByUsername(String username);
}