package com.jiangfx.controller;

import com.jiangfx.entity.Banner;
import com.jiangfx.service.BannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by jiangfeixiang on 2018/5/3
 * 网站首页
 */
@Controller
public class IndexController {
    //注入bannerService
    @Autowired
    private BannerService bannerService;

    /**
     * 首页
     */
    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String index(ModelMap modelMap){
        List<Banner> banners = bannerService.getAllBanner();
        modelMap.addAttribute("banners",banners);
        return "index";
    }
}
