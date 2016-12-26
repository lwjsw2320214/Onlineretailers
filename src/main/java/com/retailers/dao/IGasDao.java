package com.retailers.dao;

import com.retailers.entity.Gas;

import java.util.List;

/**
 * Created by GC on 2016/12/26.
 */
public interface IGasDao {

    /**
     * 获取所有的表
     * */
    List<Gas> getAll(Gas gas);

}
