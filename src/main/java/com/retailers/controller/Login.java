package com.retailers.controller;

import com.retailers.entity.LoginUser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

/**
 * Created by GC on 2016/11/29.
 */
@Controller
@RequestMapping(value = "/login")
public class Login {

    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model)
    {
        model.addAttribute("loginUser",new LoginUser());
        return "Login";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String Login(Model model, @Valid LoginUser loginUser, BindingResult result){
        if(result.hasErrors()){
            model.addAttribute("loginUser",loginUser);
            return "Login";
        }
        return "redirect:/test";
    }

}
