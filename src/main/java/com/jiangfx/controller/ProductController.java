package com.jiangfx.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by jiangfeixiang on 2018/5/3
 */
@Controller
public class ProductController {

    @RequestMapping(value = "/getAllproduct",method = RequestMethod.GET)
    public String getAllproduct(){

        return "productlist";
    }
}
