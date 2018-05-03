package com.jiangfx.controller.manager;

import com.jiangfx.entity.Admin;
import com.jiangfx.entity.Banner;
import com.jiangfx.service.AdminService;
import com.jiangfx.service.BannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

/**
 * Created by jiangfeixiang on 2018/5/3
 * 后台管理页面
 */
@Controller
@RequestMapping(value = "/admin",method = RequestMethod.GET)
public class MainController {
    //注入adminService
    @Autowired
    private AdminService adminService;

    //注入bannerService
    @Autowired
    private BannerService bannerService;

    /**
     * 管理员登录页面
     */
    @RequestMapping(value = "/loginPage",method = RequestMethod.GET)
    public String loginPage(){
        return "manager/loginPage";
    }

    /**
     * 登录
     */
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(String username, String password, ModelMap modelMap){
        Admin admin = adminService.getByUsernameAndPassword(username, password);
        if (admin !=null) {
            modelMap.addAttribute("admin",admin);
            return "manager/main";
        }else {
            modelMap.addAttribute("error","用户名或密码错误");
            return "redirect:admin/loginPage";
        }
    }

    /**
     * 后台首页欢迎界面
     */
    @RequestMapping(value = "/welcome",method = RequestMethod.GET)
    public String welcome(){

        return "manager/welcome";
    }

    /**
     * banner管理：
     *
     * 查询banner
     */
    @RequestMapping(value = "/getAllBanner",method = RequestMethod.GET)
    public String getAllBanner(ModelMap modelMap){
        List<Banner> banners = bannerService.getAllBanner();
        if (banners !=null){
            modelMap.addAttribute("banners",banners);
            return "manager/bannerList";
        }else {
            modelMap.addAttribute("error","暂无banner图,请添加");
            return "manager/bannerList";
        }
    }

    /**
     * 跳转到添加banner页面
     */
    @RequestMapping(value = "/saveBannerPage",method = RequestMethod.GET)
    public String saveBannerPage(){

        return "manager/saveBannerPage";
    }

    /**
     * 添加
     */
    @RequestMapping(value = "/saveBanner",method = RequestMethod.POST)
    public String deleteBanner(MultipartFile file, Banner banner) throws IOException {
        //图片上传
        String filePath = "E:\\upload";//保存图片的路径
        //获取原始图片的拓展名
        String originalFilename = file.getOriginalFilename();
        //新的文件名字
        String newFileName = UUID.randomUUID()+originalFilename;
        System.out.println(newFileName);
        //创建图片全路径对象
        File targetFile = new File(filePath,newFileName);

        file.transferTo(targetFile);
        banner.setImagepath(newFileName);
        bannerService.saveBanner(banner);
        return "redirect:/admin/getAllBanner";
    }

    /**
     * 删除
     */
    @RequestMapping(value = "/deleteBanner",method = RequestMethod.GET)
    public String deleteBanner(Integer id){
        bannerService.deleteBanner(id);
        return "redirect:/admin/getAllBanner";
    }
}
