package com.rzlyxw.ym.transaction.service;

import com.rzlyxw.ym.transaction.domain.Express;
import com.rzlyxw.ym.transaction.dto.PageInfo;

import java.util.List;

public interface ExpressService {
    PageInfo<Express> page(int draw, int start, int length, Express express);

    void save(Express express);

    Express getById(int id);

    void deleteOne(int id);

    List<Express> getAll();

    void delSelected(String[] sIds);
}
