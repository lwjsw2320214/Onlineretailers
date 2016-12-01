package com.retailers.controller;

import com.retailers.entity.LoginUser;
import com.retailers.entity.ManageLogin;
import com.retailers.service.ManageLoginService;
import org.springframework.beans.factory.annotation.Autowired;
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

    @Autowired
    ManageLoginService service;

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
        ManageLogin manageLogin=new ManageLogin();
        manageLogin.setLoginMame("123");
        service.getUserForUserName(manageLogin);
        return "redirect:/test";
    }

}
