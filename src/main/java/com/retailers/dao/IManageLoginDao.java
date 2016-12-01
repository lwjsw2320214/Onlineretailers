package com.retailers.dao;

import com.retailers.entity.ManageLogin;

/**
 * Created by GC on 2016/12/01.
 */
public interface IManageLoginDao {

    /**
     * 根据用户名获取用户
     * */
    public ManageLogin getUserForUserName(ManageLogin manageLogin);

    }
