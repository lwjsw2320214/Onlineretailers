package com.retailers.service;

import com.retailers.dao.IMenuDao;
import com.retailers.entity.Menu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by liu on 2016/9/4.
 */

@Service
@Transactional(readOnly = true)
public class MenuService {

    @Autowired
    IMenuDao dao;

    public List<Menu> getAll(){
        return  dao.getAll();
    }

    /**
     * 添加菜单
     * */
    @Transactional(readOnly = false)
    public Integer add(Menu menu){
        menu.preInsert();
        return  dao.add(menu);
    }

    /**
     * 根据id获取值
     * */
    public Menu getMenuForId(String id){
        return  dao.getMenuForId(id);
    }

    /**
     * 编辑
     * */
    @Transactional(readOnly = false)
    public Integer edit(Menu menu){
        return dao.edit(menu);
    }

    /**
     * 删除
     * */
    @Transactional(readOnly = false)
    public Integer delete(String id){
        return dao.delete(id);
    }



}
