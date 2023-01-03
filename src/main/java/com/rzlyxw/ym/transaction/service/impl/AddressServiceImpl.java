package com.rzlyxw.ym.transaction.service.impl;

import com.rzlyxw.ym.transaction.domain.Address;
import com.rzlyxw.ym.transaction.mapper.AddressMapper;
import com.rzlyxw.ym.transaction.service.AddressService;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import javax.annotation.Resource;

@Service
public class AddressServiceImpl implements AddressService {
    @Resource
    private AddressMapper addressMapper;

    /**
     * 通过用户ID查找地址
     * @param userId
     * @return
     */
    @Override
    public Address getByUserId(Long userId) {
        Example example = new Example(Address.class);
        example.createCriteria().andEqualTo("userId", userId);
        return addressMapper.selectOneByExample(example);
    }
}
