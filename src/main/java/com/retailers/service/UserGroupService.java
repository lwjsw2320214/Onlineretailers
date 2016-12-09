package com.retailers.service;

import com.retailers.dao.IUserGroupDao;
import com.retailers.entity.UserGroup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by GC on 2016/12/09.
 */
@Service
@Transactional(readOnly = true)
public class UserGroupService {

    @Autowired
    IUserGroupDao dao;

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
    public Integer add(UserGroup userGroup){
        userGroup.preInsert();
        return  dao.add(userGroup);
    }

    /**
     * 修改
     * */
    @Transactional(readOnly = false)
    public Integer edit(UserGroup userGroup){
        return  dao.edit(userGroup);
    }


    /**
     * 删除
     * */
    @Transactional(readOnly = false)
    public Integer delete(String id){
        return dao.delete(id);
    }

}
