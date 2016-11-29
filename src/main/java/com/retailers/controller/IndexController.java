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
        model.addAttribute("title","测试首页");
       List<Menu> list= service.getAll();
        model.addAttribute("list",list);

        List<String> list1=new ArrayList<String>();
         list1.add("第一张图片");
        list1.add("第三张张图片");
        list1.add("第四张图片");
        list1.add("第五张图片");
        return "index";
    }
}
