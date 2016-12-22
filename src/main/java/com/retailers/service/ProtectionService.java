package com.retailers.service;

import com.retailers.dao.IProtectionDao;
import com.retailers.entity.Protection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by GC on 2016/12/21.
 */
@Service
@Transactional(readOnly = true)
public class ProtectionService {

    @Autowired
    IProtectionDao dao;



    /**
     * 查找所有的问题
     * */
    public List<Protection> getAll(){
        return  dao.getAll();
    }

    /**
     * 根据id 查询
     * */
    public Protection getProtectionForId(String id){
        return  dao.getProtectionForId(id);
    }

    /**
     * 添加
     * */
    @Transactional(readOnly = false)
    public Integer add(Protection protection){
        protection.preInsert();
        return  dao.add(protection);
    }

    /**
     * 修改
     * */
    @Transactional(readOnly = false)
    public Integer edit(Protection protection){
        return  dao.edit(protection);
    }

}
