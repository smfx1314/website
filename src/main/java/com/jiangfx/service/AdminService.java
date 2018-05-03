package com.jiangfx.service;

import com.jiangfx.entity.Admin;

/**
 * Created by jiangfeixiang on 2018/5/3
 */
public interface AdminService {
    /**
     * 登录：根据用户名和密码查询
     */
    Admin getByUsernameAndPassword(String username, String password);
}
