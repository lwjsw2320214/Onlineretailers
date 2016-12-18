package com.retailers.service;

import com.retailers.dao.IManageLoginDao;
import com.retailers.entity.ManageLogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by GC on 2016/12/01.
 */
@Service
@Transactional(readOnly = true)
public class ManageLoginService {

    @Autowired
    IManageLoginDao dao;


    /**
     * 获取所有的用户
     * */
    public List<ManageLogin> getAll(){
        return  dao.getAll();
    }

    /**
     * 根据用户名获取用户
     * */
    public ManageLogin  getUserForUserName(ManageLogin manageLogin){
        return  dao.getUserForUserName(manageLogin);
    }

    /**
     * 根据用id获取用户
     * */
    public ManageLogin getUserForid(String id){
        return  dao.getUserForid(id);
    }

    /**
     * 添加用户
     * */
    @Transactional(readOnly = false)
    public Integer add(ManageLogin manageLogin){
        manageLogin.preInsert();
        return dao.add(manageLogin);
    }

    /**
     * 修改用户
     * */
    @Transactional(readOnly = false)
    public Integer edit(ManageLogin manageLogin){
        return   dao.edit(manageLogin);
    }

    /**
     * 删除
     * */
    @Transactional(readOnly = false)
    public Integer delete(String id){
        return  dao.delete(id);
    }

}
