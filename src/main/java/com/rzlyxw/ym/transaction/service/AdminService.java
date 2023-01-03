package com.rzlyxw.ym.transaction.service;

import com.rzlyxw.ym.transaction.domain.Admin;

public interface AdminService {
    Admin login(String username,String password);
}
