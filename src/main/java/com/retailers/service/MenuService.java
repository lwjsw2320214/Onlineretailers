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

}
