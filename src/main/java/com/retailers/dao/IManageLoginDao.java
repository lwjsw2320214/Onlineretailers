package com.retailers.dao;

import com.retailers.entity.ManageLogin;

import java.util.List;

/**
 * Created by GC on 2016/12/01.
 */
public interface IManageLoginDao {


    /**
     * 获取所有的用户
     * */
    List<ManageLogin> getAll();

    /**
     * 根据用户名获取用户
     * */
    public ManageLogin getUserForUserName(ManageLogin manageLogin);


    }
