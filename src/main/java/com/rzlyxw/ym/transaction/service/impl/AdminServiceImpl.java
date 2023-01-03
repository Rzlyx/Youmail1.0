package com.rzlyxw.ym.transaction.service.impl;

import com.rzlyxw.ym.transaction.domain.Admin;
import com.rzlyxw.ym.transaction.mapper.AdminMapper;
import com.rzlyxw.ym.transaction.service.AdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class AdminServiceImpl implements AdminService {

    @Resource
    private AdminMapper adminMapper;

    @Override
    public Admin login(String username,String password) {
        Admin admin = adminMapper.getByUsername(username);

        if(admin != null){
            if (admin.getPassword().equals(password)){
                return admin;
            }
        }
        return null;
    }
}
