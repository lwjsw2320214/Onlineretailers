package com.retailers.dao;

import com.retailers.entity.ManageOffice;

import java.util.List;

/**
 * Created by GC on 2016/12/08.
 */
public interface IOfficeDao {

    /**
     * 获取所有的信息
     * */
    List<ManageOffice> getAll();

    /**
     * 根据id获取部门
     * */
    ManageOffice getManageOfficeForId(String id);

    /**
     * 添加部门
     * */
    Integer add(ManageOffice manageOffice);

    /**
     * 修改部门
     * */
    Integer edit(ManageOffice manageOffice);

    /**
     * 删除
     * */
    Integer delete(String id);
}
