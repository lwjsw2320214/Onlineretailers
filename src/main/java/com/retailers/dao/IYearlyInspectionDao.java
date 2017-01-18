package com.retailers.dao;


import com.retailers.entity.YearlyInspection;

/**
 * Created by 刘维军 on 2017/01/18.
 */
public interface IYearlyInspectionDao {

    /**
     * 根据表号和年月日获取数据
     * */
    YearlyInspection getYearlyInspection(YearlyInspection yearlyInspection);

}
