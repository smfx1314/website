package com.jiangfx.entity;

/**
 * Created by jiangfeixiang on 2018/5/3
 */
public class Banner {
    private Integer id;
    private String imagepath;
    private String bannerdesc;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getImagepath() {
        return imagepath;
    }

    public void setImagepath(String imagepath) {
        this.imagepath = imagepath;
    }

    public String getBannerdesc() {
        return bannerdesc;
    }

    public void setBannerdesc(String bannerdesc) {
        this.bannerdesc = bannerdesc;
    }

    @Override
    public String toString() {
        return "Banner{" +
                "id=" + id +
                ", imagepath='" + imagepath + '\'' +
                ", bannerdesc='" + bannerdesc + '\'' +
                '}';
    }
}
