package com.retailers.controller.System;

import com.alibaba.druid.util.StringUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.retailers.common.Base.BaseController;
import com.retailers.entity.ManageLogin;
import com.retailers.service.ManageLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by 刘维军 on 2016/12/15.
 */
@Controller
@RequestMapping("/user")
public class UserController  extends BaseController{

    @Autowired
    ManageLoginService manageLoginService;

    @RequestMapping
    public String index(Model model,HttpServletRequest request){
        String page="1";
        if (StringUtils.isNumber(request.getParameter("page"))){
            page=request.getParameter("page");
        }
        Integer pageNum=Integer.parseInt(page) ;
        PageHelper.startPage(pageNum,pageSize);
        List<ManageLogin> list=manageLoginService.getAll();
        PageInfo<ManageLogin> pageInfo=new PageInfo<ManageLogin>(list);
        model.addAttribute("pageInfo",pageInfo);
        return "System/user";
    }
}
