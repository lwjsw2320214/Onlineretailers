package com.retailers.service;

import com.retailers.dao.IGasDao;
import com.retailers.entity.Gas;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by GC on 2016/12/26.
 */
@Service
@Transactional(readOnly = true)
public class GasService {

    @Autowired
    IGasDao dao;

    /**
     * 获取所有的表
     * */
    public List<Gas> getAll(Gas gas){
        return dao.getAll(gas);
    }
}
