package com.retailers.entity;

import javax.validation.constraints.Max;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.io.Serializable;

import static javax.swing.text.StyleConstants.Size;

/**
 * Created by 刘维军 on 2016/11/30.
 */
public class LoginUser implements Serializable {
    private  Integer id;
    @Size(max =18,min = 4,message = "用户名长度必须为{2}-{1}位的字符串")
    private  String userName;
    @Size(max =18,min = 4,message = "密码长度必须为{2}-{1}位的字符串")
    private  String password;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
