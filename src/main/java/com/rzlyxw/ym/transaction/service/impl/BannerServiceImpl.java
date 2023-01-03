package com.rzlyxw.ym.transaction.service.impl;

import com.rzlyxw.ym.transaction.domain.Banner;
import com.rzlyxw.ym.transaction.mapper.BannerMapper;
import com.rzlyxw.ym.transaction.service.BannerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BannerServiceImpl  implements BannerService {
    @Resource
    private BannerMapper bannerMapper;

    @Override
    public List<Banner> showBanner() {
        List<Banner> banners = bannerMapper.selectAll();
        return banners;
    }
}
