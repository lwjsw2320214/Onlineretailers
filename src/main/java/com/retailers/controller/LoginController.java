package com.retailers.controller;

import com.retailers.common.Encryption;
import com.retailers.entity.LoginUser;
import com.retailers.service.ManageLoginService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
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
public class LoginController {

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
        Subject currentUser = SecurityUtils.getSubject();
        Encryption encryption=new Encryption();
        UsernamePasswordToken token=new UsernamePasswordToken(loginUser.getUserName(),encryption.md5Encryption(loginUser.getPassword()));
        try {
            currentUser.login(token);
            return "redirect:/index";
        }catch (Exception e){
            token.clear();
            model.addAttribute("loginUser",loginUser);
            result.rejectValue("password","","用户名或者密码错误！");
            return "Login";
        }
    }
}
