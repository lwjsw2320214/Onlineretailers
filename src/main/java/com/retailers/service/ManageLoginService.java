package com.retailers.service;

import com.retailers.dao.IManageLoginDao;
import com.retailers.entity.ManageLogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by GC on 2016/12/01.
 */
@Service
@Transactional(readOnly = true)
public class ManageLoginService {

    @Autowired
    IManageLoginDao dao;

    /**
     * 根据用户名获取用户
     * */
    public ManageLogin  getUserForUserName(ManageLogin manageLogin){
        return  dao.getUserForUserName(manageLogin);
    }

}