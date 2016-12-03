package com.retailers.controller.System;

import com.retailers.entity.Menu;
import com.retailers.service.MenuService;
 import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by 刘维军 on 2016/12/02.
 */
@Controller
@RequestMapping("/menu")
public class MenuController {

    @Autowired
    MenuService service;
    /**
     * 菜单管理首页
     * */
    @RequestMapping
    public String index(Model model){
        List<Menu> sourcelist=service.getAll();
        List<Menu> list=new ArrayList<Menu>();
        Menu.sortList(list,sourcelist,"0",true);
        model.addAttribute("list",list);
        return "System/menu";
    }
}
