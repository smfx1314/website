package com.jiangfx.controller;

import com.jiangfx.entity.Product;
import com.jiangfx.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by jiangfeixiang on 2018/5/3
 */
@Controller
public class ProductController {

    //注入ProductService
    @Autowired
    private ProductService productService;

    /**
     * 查询所有产品
     * @return
     */
    @RequestMapping(value = "/getProduct",method = RequestMethod.GET)
    public String getAllproduct(ModelMap modelMap){
        List<Product> products = productService.getAllProduct();
        if (products !=null){
            modelMap.addAttribute("products",products);
            return "product";
        }else {
            return "fail";
        }
    }
}
