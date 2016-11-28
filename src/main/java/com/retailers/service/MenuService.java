package com.retailers.service;

import com.retailers.dao.IMenu;
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
    IMenu dao;

    public List<Menu> getAll(){
        return  dao.getAll();
    }

}
