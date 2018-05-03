package com.jiangfx.mapper;

import com.jiangfx.entity.Banner;

import java.util.List;

/**
 * Created by jiangfeixiang on 2018/5/3
 */
public interface BannerMapper {
    /**
     * 查询所有banner
     */
    List<Banner> getAllBanner();

    /**
     * 添加banner
     */
    void saveBanner(Banner banner);

    /**
     * 删除banner
     * @param id
     */
    void deleteBanner(Integer id);
}
