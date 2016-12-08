package com.retailers.service;

import com.retailers.dao.IOfficeDao;
import com.retailers.entity.ManageOffice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by GC on 2016/12/08.
 */
@Service
@Transactional(readOnly = true)
public class OfficeService {

    @Autowired
    IOfficeDao dao;

    /**
     * 获取所有的信息
     * */
   public   List<ManageOffice> getAll(){
       return dao.getAll();
    }

    /**
     * 根据id获取部门
     * */
    public ManageOffice getManageOfficeForId(String id){
        return dao.getManageOfficeForId(id);
    }

    /**
     * 添加部门
     * */
    @Transactional(readOnly = false)
    public Integer add(ManageOffice manageOffice){
        manageOffice.preInsert();
        return dao.add(manageOffice);
    }

    /**
     * 修改部门
     * */
    @Transactional(readOnly = false)
    public   Integer edit(ManageOffice manageOffice){
        return  dao.edit(manageOffice);
    }

    /**
     * 删除
     * */
    @Transactional(readOnly = false)
    public Integer delete(String id){
        return dao.delete(id);
    }
}
