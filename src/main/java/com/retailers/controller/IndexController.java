package com.retailers.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by liu on 2016/9/4.
 */
@Controller
@RequestMapping(value = "/index")
public class IndexController {

    @RequestMapping
    public String index(Model model){
        model.addAttribute("title","测试首页");
        model.addAttribute("i",1);
        return "view/index";
    }
}
