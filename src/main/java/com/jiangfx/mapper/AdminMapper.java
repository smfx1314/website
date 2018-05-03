package com.jiangfx.mapper;

import com.jiangfx.entity.Admin;
import org.apache.ibatis.annotations.Param;

/**
 * Created by jiangfeixiang on 2018/5/3
 */
public interface AdminMapper {
    /**
     * 登录：根据用户名密码查询
     */
    Admin getByUsernameAndPassword(@Param("username") String username, @Param("password") String password);
}
