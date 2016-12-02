package com.retailers.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * Created by GC on 2016/12/02.
 */
@Controller
@RequestMapping("/loginOut")
public class LoginOut {

    @RequestMapping
    public String index(){
        Subject subject= SecurityUtils.getSubject();
        subject.logout();
        return "redirect:/login";
    }
}
