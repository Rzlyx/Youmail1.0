package com.rzlyxw.ym.transaction.mapper;

import com.rzlyxw.ym.transaction.domain.Express;
import tk.mybatis.MyMapper;

import java.util.List;
import java.util.Map;

public interface ExpressMapper extends MyMapper<Express> {
    List<Express>  expressPage(Map<String,Object> params);
}