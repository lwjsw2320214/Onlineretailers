package com.retailers.controller.System;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.retailers.common.Base.BaseController;
import com.retailers.common.Encryption;
import com.retailers.entity.ManageLogin;
import com.retailers.entity.ManageOffice;
import com.retailers.entity.UserGroup;
import com.retailers.service.ManageLoginService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

/**
 * Created by 刘维军 on 2016/12/15.
 */
@Controller
@RequestMapping("/user")
public class UserController  extends BaseController{

    @Autowired
    ManageLoginService manageLoginService;

    @RequestMapping
    public String index(Model model,HttpServletRequest request){
        String page="1";
        if (StringUtils.isNumeric(request.getParameter("page"))){
            page=request.getParameter("page");
        }
        Integer pageNum=Integer.parseInt(page) ;
        PageHelper.startPage(pageNum,pageSize);
        List<ManageLogin> list=manageLoginService.getAll();
        PageInfo<ManageLogin> pageInfo=new PageInfo<ManageLogin>(list);
        model.addAttribute("pageInfo",pageInfo);
        return "System/user";
    }


    @RequestMapping(value = "/add",method = RequestMethod.GET)
    public String add(Model model){
        ManageLogin manageLogin= new ManageLogin();
        if (manageLogin.getOffice()==null){
            ManageOffice manageOffice=new ManageOffice();
            manageLogin.setOffice(manageOffice);
        }
        if (manageLogin.getGroup()==null){
            UserGroup userGroup=new UserGroup();
            manageLogin.setGroup(userGroup);
        }
        model.addAttribute("manageLogin",manageLogin);
        return "System/userAdd";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(Model model, @Valid ManageLogin manageLogin, BindingResult result, RedirectAttributes redirectAttributes){
        if(!result.hasErrors()){
            if (manageLogin.getLoginPassword().length()>3&& !StringUtils.isBlank(manageLogin.getLoginPassword())&&manageLogin.getLoginPassword().length()<19){
            //获取当前用户名是否被注册过
            ManageLogin ml=manageLoginService.getUserForUserName(manageLogin);
            if (null==ml){
                Encryption encryption=new Encryption();
                manageLogin.setLoginPassword(encryption.md5Encryption(manageLogin.getLoginPassword()));
                Integer count=manageLoginService.add(manageLogin);
                if (count>0){
                    redirectAttributes.addFlashAttribute("message","添加成功！");
                return "redirect:/user";
            }
            }else {
                result.rejectValue("loginName","","该用户已被名被注册！");
            }
            }else{
                result.rejectValue("loginPassword","","登录密码必须为4到18位字符串！");
            }
        }
        model.addAttribute("manageLogin",manageLogin);
        return "System/userAdd";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable String id, Model model){
       ManageLogin manageLogin=  manageLoginService.getUserForid(id);
       model.addAttribute("manageLogin",manageLogin);
        return "System/userEdit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String edit(Model model, @Valid ManageLogin manageLogin, BindingResult result, RedirectAttributes redirectAttributes){
        model.addAttribute("manageLogin",manageLogin);
        if(!result.hasErrors()){
            if (manageLogin.getLoginPassword().length()>3&& !StringUtils.isBlank(manageLogin.getLoginPassword())&&manageLogin.getLoginPassword().length()<19){
                Encryption encryption=new Encryption();
                manageLogin.setLoginPassword(encryption.md5Encryption(manageLogin.getLoginPassword()));
            }else if (manageLogin.getLoginPassword().length()<4&&manageLogin.getLoginPassword().length()>0){
                result.rejectValue("loginPassword","","登录密码必须为4到18位字符串！");
                return "System/userEdit";
            }
                Integer count=manageLoginService.edit(manageLogin);
                if (count>0){
                    redirectAttributes.addFlashAttribute("message","修改成功！");
                    return "redirect:/user";
                }else {
                    redirectAttributes.addFlashAttribute("message","修改失败！");
                    return "redirect:/user";
                }
        }
        return "System/userEdit";
    }


    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public  String  delete(@PathVariable String id, Model model, RedirectAttributes redirectAttributes){
        Integer count=manageLoginService.delete(id);
        if (count>0){
            redirectAttributes.addFlashAttribute("message","删除成功！");
        }else{
            redirectAttributes.addFlashAttribute("message","删除失败！");
        }
        return "redirect:/user";
    }

}
