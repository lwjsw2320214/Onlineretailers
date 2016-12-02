package com.retailers.controller.System;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by 刘维军 on 2016/12/02.
 */
@Controller
@RequestMapping("/menu")
public class MenuController {

    /**
     * 菜单管理首页
     * */
    @RequestMapping
    public String index(){
        return "System/menu";
    }
}
