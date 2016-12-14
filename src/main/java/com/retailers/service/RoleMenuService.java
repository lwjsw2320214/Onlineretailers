package com.retailers.service;

import com.retailers.dao.IRoleMenuDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by GC on 2016/12/14.
 */
@Service
@Transactional(readOnly = true)
public class RoleMenuService {

    @Autowired
    IRoleMenuDao dao;

    /**
     * 根据权限id 查询所有的菜单
     * */
    public String getAllMenuId(String roleId){
        return dao.getAllMenuId(roleId);
    }
}
