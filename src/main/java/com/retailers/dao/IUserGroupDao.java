package com.retailers.dao;

import com.retailers.entity.UserGroup;

import java.util.List;

/**
 * Created by GC on 2016/12/09.
 */
public interface IUserGroupDao {

    /**
     * 获取所有数据
     * */
    List<UserGroup> getAll();

    /**
     * 根据id获取用户组
     * */
    UserGroup getUserGroupForId(String id);

    /**
     * 添加
     * */
    Integer add(UserGroup userGroup);

    /**
     * 修改
     * */
    Integer edit(UserGroup userGroup);

    /**
     * 删除
     * */
    Integer delete(String id);

}
