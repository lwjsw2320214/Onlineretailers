package com.retailers.dao;

import com.retailers.entity.Menu;

import java.util.List;

/**
 * Created by GC on 2016/11/10.
 */
public interface IMenuDao {

    /**
     * 获取所有的菜单
     * */
    List<Menu> getAll();

    /**
     * 添加菜单
     * */
    Integer add(Menu menu);

    /**
     * 根据id获取值
     * */
    Menu getMenuForId(String id);

    /**
     * 编辑
     * */
    Integer edit(Menu menu);

    /**
     * 删除
     * */
    Integer delete(String id);
}
