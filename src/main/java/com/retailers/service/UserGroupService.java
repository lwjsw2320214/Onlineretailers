package com.retailers.service;

import com.retailers.dao.IRoleMenuDao;
import com.retailers.dao.IUserGroupDao;
import com.retailers.entity.RoleMenu;
import com.retailers.entity.UserGroup;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by GC on 2016/12/09.
 */
@Service
@Transactional(readOnly = true)
public class UserGroupService {

    @Autowired
    IUserGroupDao dao;
    @Autowired
    IRoleMenuDao roleMenuDao;

    /**
     * 获取所有数据
     * */
    public List<UserGroup> getAll(){
        return  dao.getAll();
    }

    /**
     * 根据id获取用户组
     * */
    public UserGroup getUserGroupForId(String id){
        return dao.getUserGroupForId(id);
    }

    /**
     * 添加
     * */
    @Transactional(readOnly = false)
    public Integer add(UserGroup userGroup,List<String> list){
        List<RoleMenu> roleList=new ArrayList<RoleMenu>();
        userGroup.preInsert();
        Integer count=dao.add(userGroup);
        for (String item:list) {
            if (!StringUtils.isBlank(item)){
            RoleMenu roleMenu=new RoleMenu();
            roleMenu.preInsert();
            roleMenu.setMenuId(item);
            roleMenu.setRoleId(userGroup.getId());
            roleList.add(roleMenu);
            }
        }
        if (roleList.size()>0){
            count+=roleMenuDao.add(roleList);
        }
        return count;
    }

    /**
     * 修改
     * */
    @Transactional(readOnly = false)
    public Integer edit(UserGroup userGroup,List<String> list){
        List<RoleMenu> roleList=new ArrayList<RoleMenu>();
        Integer count=dao.edit(userGroup);
        roleMenuDao.delete(userGroup.getId());
        for (String item:list) {
            if (!StringUtils.isBlank(item)){
                RoleMenu roleMenu=new RoleMenu();
                roleMenu.preInsert();
                roleMenu.setMenuId(item);
                roleMenu.setRoleId(userGroup.getId());
                roleList.add(roleMenu);
            }
        }
        if (roleList.size()>0){
            count+=roleMenuDao.add(roleList);
        }
        return count;
    }


    /**
     * 删除
     * */
    @Transactional(readOnly = false)
    public Integer delete(String id){
        roleMenuDao.delete(id);
        return dao.delete(id);
    }

}
