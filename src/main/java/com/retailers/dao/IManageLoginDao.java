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
     ManageLogin getUserForUserName(ManageLogin manageLogin);


    /**
     * 根据用id获取用户
     * */
    ManageLogin getUserForid(String id);
     /**
      * 添加用户
      * */
     Integer add(ManageLogin manageLogin);

     /**
      * 修改用户
      * */
     Integer edit(ManageLogin manageLogin);

     /**
      * 删除
      * */
     Integer delete(String id);

    }
