package com.retailers.controller;

import com.retailers.entity.LoginUser;
import com.retailers.entity.ManageLogin;
import com.retailers.entity.Menu;
import com.retailers.service.MenuService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
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
         return "index";
    }
}
