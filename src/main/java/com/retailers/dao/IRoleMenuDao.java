package com.retailers.dao;

import com.retailers.entity.RoleMenu;

import java.util.List;

/**
 * Created by GC on 2016/12/14.
 */
public interface IRoleMenuDao {
    /**
     * 添加
     * */
    Integer add(List<RoleMenu> list);

    /**
     * 根据权限id 查询所有的菜单
     * */
    String getAllMenuId(String roleId);

    /**
     * 根据权限id 删除所有的选中
     * */
    void  delete(String roleId);
}
