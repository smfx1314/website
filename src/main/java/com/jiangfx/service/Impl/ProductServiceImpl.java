package com.jiangfx.service.Impl;

import com.jiangfx.entity.Product;
import com.jiangfx.mapper.ProductMapper;
import com.jiangfx.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by jiangfeixiang on 2018/5/3
 */
@Service
public class ProductServiceImpl implements ProductService {
    //注入ProductMapper
    @Autowired
    private ProductMapper productMapper;

    /**
     * 查询所有产品
     * @return
     */
    @Override
    public List<Product> getAllProduct() {
        List<Product> allProduct = productMapper.getAllProduct();
        return allProduct;
    }

    /**
     * 添加
     * @param product
     */
    @Override
    public void saveProduct(Product product) {
        productMapper.saveProduct(product);
    }

    /**
     * 删除
     * @param id
     */
    @Override
    public void deleteProduct(Integer id) {
        productMapper.deleteProduct(id);
    }
}
