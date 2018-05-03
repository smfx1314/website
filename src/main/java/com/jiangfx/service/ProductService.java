package com.jiangfx.service;

import com.jiangfx.entity.Product;

import java.util.List;

/**
 * Created by jiangfeixiang on 2018/5/3
 */
public interface ProductService {
    /**
     * 查询所有产品
     */
    List<Product> getAllProduct();

    /**
     * 添加
     * @param product
     */
    void saveProduct(Product product);

    /**
     * 删除
     * @param id
     */
    void deleteProduct(Integer id);
}
