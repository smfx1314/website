package com.jiangfx.controller.manager;

import com.jiangfx.entity.Product;
import com.jiangfx.service.ProductService;
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
 */
@Controller
@RequestMapping("/admin")
public class ProductManagerController {

    //注入ProductService
    @Autowired
    private ProductService productService;

    /**
     * 查询所有产品
     * @return
     */
    @RequestMapping(value = "/getAllproduct",method = RequestMethod.GET)
    public String getAllproduct(ModelMap modelMap){
        List<Product> products = productService.getAllProduct();
        System.out.println("111111111111111"+products);
        if (products.size()>0){
            modelMap.addAttribute("products",products);
            System.out.println("2222222222222222211"+products);
            return "manager/productlist";
        }else {
            modelMap.addAttribute("error","空空如也，快去添加产品吧");
            System.out.println("kong1111111111111");
            return "manager/productlist";
        }
    }

    /**
     * 跳转到添加product页面
     */
    @RequestMapping(value = "/saveProductPage",method = RequestMethod.GET)
    public String saveProductPage(){

        return "manager/saveProductPage";
    }

    /**
     * 添加产品
     * @param file
     * @param product
     * @return
     */
    @RequestMapping(value = "/saveProduct",method = RequestMethod.POST)
    public String saveProduct(MultipartFile file,Product product) throws IOException {
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
        product.setImage(newFileName);
        productService.saveProduct(product);
        System.out.println("添加商品成功");
        return "redirect:/admin/getAllproduct";
    }

    /**
     * 删除
     * @param id
     * @return
     */
    @RequestMapping(value = "/deleteProduct",method = RequestMethod.GET)
    public String deleteProduct(Integer id){
        productService.deleteProduct(id);
        return "redirect:/admin/getAllproduct";
    }
}
