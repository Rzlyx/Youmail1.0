package com.rzlyxw.ym.transaction.service;

import com.rzlyxw.ym.transaction.domain.Address;


public interface AddressService {
    Address getByUserId(Long userId);

}
