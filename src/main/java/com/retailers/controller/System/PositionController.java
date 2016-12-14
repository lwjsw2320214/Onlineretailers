package com.retailers.controller.System;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by GC on 2016/12/14.
 */
@Controller
@RequestMapping("/position")
public class PositionController {

    @RequestMapping
    public String index(){
        return "System/position";
    }
}
