package com.retailers.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by 刘维军 on 2016/12/22.
 */
@Controller
@RequestMapping(value = "/member")
public class MemberController {

    @RequestMapping
    public String index(){
        return  "member/index";
    }
}
