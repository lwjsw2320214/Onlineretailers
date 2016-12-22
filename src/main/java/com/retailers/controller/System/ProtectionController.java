package com.retailers.controller.System;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.retailers.common.Base.BaseController;
import com.retailers.entity.ManageLogin;
import com.retailers.entity.Protection;
import com.retailers.service.ProtectionService;
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
 * Created by 刘维军 on 2016/12/22.
 */
@Controller
@RequestMapping(value = "/protection")
public class ProtectionController extends BaseController {

    @Autowired
    ProtectionService service;

    @RequestMapping
    public String index(Model model,HttpServletRequest request){
        String page="1";
        if (StringUtils.isNumeric(request.getParameter("page"))){
            page=request.getParameter("page");
        }
        Integer pageNum=Integer.parseInt(page) ;
        PageHelper.startPage(pageNum,pageSize);
        List<Protection> list= service.getAll();
        PageInfo<Protection> pageInfo=new PageInfo<Protection>(list);
        model.addAttribute("pageInfo",pageInfo);
        return "protection/index";
    }

    /**
     * 添加
     * */
    @RequestMapping(value = "add",method = RequestMethod.GET)
    public String add(Model model){
        model.addAttribute("protection",new Protection());
        return "protection/protectionAdd";
    }

    @RequestMapping(value = "add",method = RequestMethod.POST)
    public String add(Model model, @Valid Protection protection, BindingResult result, RedirectAttributes redirectAttributes){
        if (!result.hasErrors()){
            Integer count= service.add(protection);
            if (count>0){
                redirectAttributes.addFlashAttribute("message","添加成功！");
                return "redirect:/protection";
            }
        }
        model.addAttribute("protection",protection);
        return "protection/protectionAdd";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable String id, Model model){
        Protection protection= service.getProtectionForId(id);
        model.addAttribute("protection",protection);
        return "protection/protectionEdit";
    }

    @RequestMapping(value = "edit",method = RequestMethod.POST)
    public String edit(Model model, @Valid Protection protection, BindingResult result, RedirectAttributes redirectAttributes){
        if (!result.hasErrors()){
            Integer count= service.edit(protection);
            if (count>0){
                redirectAttributes.addFlashAttribute("message","修改成功！");
                return "redirect:/protection";
            }
        }
        model.addAttribute("protection",protection);
        return "protection/protectionAdd";
    }
}
