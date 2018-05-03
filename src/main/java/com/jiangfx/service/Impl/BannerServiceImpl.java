package com.jiangfx.service.Impl;

import com.jiangfx.entity.Banner;
import com.jiangfx.mapper.BannerMapper;
import com.jiangfx.service.BannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by jiangfeixiang on 2018/5/3
 */
@Service
public class BannerServiceImpl implements BannerService {
    //注入BannerMapper
    @Autowired
    private BannerMapper bannerMapper;

    /**
     * 查询所有banner
     * @return
     */
    @Override
    public List<Banner> getAllBanner() {
        List<Banner> banner = bannerMapper.getAllBanner();
        if (banner.size()>0){
            return banner;
        }
        return null;
    }

    /**
     * 添加banner
     */
    @Override
    @Transactional
    public void saveBanner(Banner banner) {
        bannerMapper.saveBanner(banner);
    }

    /**
     * 删除banner
     * @param id
     */
    @Override
    @Transactional
    public void deleteBanner(Integer id) {
        bannerMapper.deleteBanner(id);
    }

}
