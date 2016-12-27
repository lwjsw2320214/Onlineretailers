package com.retailers.controller.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by GC on 2016/12/27.
 */
@Controller
@RequestMapping(value = "/order")
public class OrderController {


    @RequestMapping
    public String index(){
        return "order/index";
    }

}
