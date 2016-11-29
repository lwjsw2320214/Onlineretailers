package com.retailers.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by GC on 2016/11/29.
 */
@Controller
@RequestMapping(value = "/login")
public class Login {

    @RequestMapping
    public String index(){
        return "Login";
    }

}
