package com.retailers.controller.System;

import com.retailers.entity.UserGroup;
import com.retailers.service.UserGroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.List;

/**
 * Created by GC on 2016/12/09.
 */
@Controller
@RequestMapping("/userGroup")
public class UserGroupController {

    @Autowired
    UserGroupService service;

    @RequestMapping
    public String index(Model model){
        List<UserGroup> list=service.getAll();
        model.addAttribute("list",list);
        return "System/userGroup";
    }

    @RequestMapping(value = "/add",method = RequestMethod.GET)
    public String add(Model model){
        model.addAttribute("userGroup",new UserGroup());
        return "System/userGroupAdd";
    }

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String add(Model model, @Valid UserGroup userGroup , BindingResult result, RedirectAttributes redirectAttributes){
        if (result.hasErrors()){
            model.addAttribute("userGroup",userGroup);
            return "System/userGroupAdd";
        }
        Integer count=service.add(userGroup);
        if (count>0){
            redirectAttributes.addFlashAttribute("message","添加成功！");
            return "redirect:/userGroup";
        }
        model.addAttribute("userGroup",userGroup);
        return "System/userGroupAdd";
    }

    @RequestMapping(value = "/edit/{id}",method = RequestMethod.GET)
    public String edit(@PathVariable String id,Model model){
        UserGroup userGroup=service.getUserGroupForId(id);
        model.addAttribute("userGroup",userGroup);
        return "System/userGroupEdit";
    }

    @RequestMapping(value = "/edit",method = RequestMethod.POST)
    public String edit(Model model, @Valid UserGroup userGroup , BindingResult result, RedirectAttributes redirectAttributes){
        if (result.hasErrors()){
            model.addAttribute("userGroup",userGroup);
            return "System/userGroupEdit";
        }
        Integer count=service.edit(userGroup);
        if (count>0){
            redirectAttributes.addFlashAttribute("message","修改成功！");
            return "redirect:/userGroup";
        }
        model.addAttribute("userGroup",userGroup);
        return "System/userGroupEdit";
    }

    @RequestMapping(value = "/delete/{id}",method = RequestMethod.GET)
    public String delete(@PathVariable String id,Model model, RedirectAttributes redirectAttributes){
        Integer count=service.delete(id);
        if (count>0){
            redirectAttributes.addFlashAttribute("message","删除成功！");
        } else
        {
            redirectAttributes.addFlashAttribute("message","删除成功！");
        }
        return "redirect:/userGroup";
    }


}