package com.retailers.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by liu on 2016/9/4.
 */
@Controller
@RequestMapping(value = "/index")
public class IndexController {

    @RequestMapping
    public String index(){
        return "view/index";
    }
}
