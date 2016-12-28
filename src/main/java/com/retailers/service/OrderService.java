package com.retailers.service;

import com.retailers.dao.IOrderDao;
import com.retailers.entity.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by GC on 2016/12/28.
 */
@Service
@Transactional(readOnly = true)
public class OrderService {

    @Autowired
    IOrderDao dao;

    /**
     * 获取所有
     * */
    public List<Order> getAll(Order order){
        return  dao.getAll(order);
    }


    /**
     * 根据id查询订单
     * */
    public Order getOrder(String id){
        return  dao.getOrder(id);
    }
}
