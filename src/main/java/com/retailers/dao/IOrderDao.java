package com.retailers.dao;

import com.retailers.entity.Order;

import java.util.List;

/**
 * Created by GC on 2016/12/28.
 */
public interface IOrderDao {
    /**
     * 获取所有
     * */
    List<Order> getAll(Order order);

    /**
     * 根据id查询订单
     * */
    Order getOrder(String id);

    /**
     * 修改订单状态
     * */
    Integer edit(Order order);
}
