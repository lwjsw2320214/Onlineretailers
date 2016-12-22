package com.retailers.dao;

import com.retailers.entity.Protection;

import java.util.List;

/**
 * Created by 刘维军 on 2016/12/22.
 */
public interface IProtectionDao {

    /**
     * 查找所有的问题
     * */
    List<Protection> getAll();

    /**
     * 根据id 查询
     * */
    Protection getProtectionForId(String id);


    /**
     * 添加
     * */
    Integer add(Protection protection);

    /**
     * 修改
     * */
    Integer edit(Protection protection);
}
