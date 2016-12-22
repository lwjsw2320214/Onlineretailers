package com.retailers.controller;

import com.retailers.entity.Menu;
import com.retailers.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by liu on 2016/9/4.
 */
@Controller
@RequestMapping(value = "/index")
public class IndexController {

    @Autowired
    MenuService service;

    @RequestMapping
    public String index(Model model){
         return "index";
    }

    @RequestMapping(value = "/menuList")
    public String menuList(Model model){
        List<Menu> sourcelist=service.getAll();
        List<Menu> list=new ArrayList<Menu>();
        Menu.sortList(list,sourcelist,"0",true);
        model.addAttribute("list",list);
        return "System/menuPage/nav";
    }
}
