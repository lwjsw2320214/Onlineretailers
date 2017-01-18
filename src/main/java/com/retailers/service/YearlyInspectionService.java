package com.retailers.service;

import com.retailers.dao.IYearlyInspectionDao;
import com.retailers.entity.YearlyInspection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by 刘维军 on 2017/01/18.
 */
@Service
@Transactional(readOnly = true)
public class YearlyInspectionService {

    @Autowired
    IYearlyInspectionDao dao;

    /**
     * 根据表号和年月日获取数据
     * */
    public YearlyInspection getYearlyInspection(YearlyInspection yearlyInspection){
        return  dao.getYearlyInspection(yearlyInspection);
    }
}
