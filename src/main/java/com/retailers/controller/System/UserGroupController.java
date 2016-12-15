package com.retailers.controller.System;

import com.alibaba.druid.util.StringUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.retailers.common.Base.BaseController;
import com.retailers.common.ConfigProperties;
import com.retailers.entity.Menu;
import com.retailers.entity.UserGroup;
import com.retailers.service.MenuService;
import com.retailers.service.RoleMenuService;
import com.retailers.service.UserGroupService;
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
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by GC on 2016/12/09.
 */
@Controller
@RequestMapping("/userGroup")
public class UserGroupController extends BaseController {

    @Autowired
    UserGroupService service;
    @Autowired
    MenuService menuService;
    @Autowired
    RoleMenuService roleMenuService;

    @RequestMapping
    public String index(Model model,HttpServletRequest request){
        String page="1";
        if (StringUtils.isNumber(request.getParameter("page"))){
            page=request.getParameter("page");
        }
        Integer pageNum=Integer.parseInt(page) ;
        PageHelper.startPage(pageNum,pageSize);
        List<UserGroup> list=service.getAll();
        PageInfo<UserGroup> pageInfo=new PageInfo<UserGroup>(list);
        model.addAttribute("pageInfo",pageInfo);
        return "System/userGroup";
    }

    @RequestMapping(value = "/add",method = RequestMethod.GET)
    public String add(Model model){
        model.addAttribute("userGroup",new UserGroup());
        //所有菜单
        List<Menu> menuList=new ArrayList<Menu>();
        Menu.sortList(menuList, menuService.getAll(),"0",true);
        model.addAttribute("menuList",menuList);
        return "System/userGroupAdd";
    }

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String add(Model model,HttpServletRequest request, @Valid UserGroup userGroup ,  BindingResult result, RedirectAttributes redirectAttributes){
        String roleList=request.getParameter("roleList");
        if (!result.hasErrors()){
            List<String> list= new ArrayList(Arrays.asList(roleList.split(",")));
            Integer count=service.add(userGroup,list);
            if (count>0){
                redirectAttributes.addFlashAttribute("message","添加成功！");
                return "redirect:/userGroup";
            }
        }
        //所有菜单
        List<Menu> menuList=new ArrayList<Menu>();
        Menu.sortList(menuList, menuService.getAll(),"0",true);
        model.addAttribute("menuList",menuList);
        model.addAttribute("userGroup",userGroup);
        model.addAttribute("roleList",roleList);
        return "System/userGroupAdd";
    }

    @RequestMapping(value = "/edit/{id}",method = RequestMethod.GET)
    public String edit(@PathVariable String id,Model model){
        UserGroup userGroup=service.getUserGroupForId(id);
        model.addAttribute("userGroup",userGroup);
        //所有菜单
        List<Menu> menuList=new ArrayList<Menu>();
        Menu.sortList(menuList, menuService.getAll(),"0",true);
        model.addAttribute("menuList",menuList);
        String roleList=roleMenuService.getAllMenuId(id);
        model.addAttribute("roleList",roleList);
        return "System/userGroupEdit";
    }

    @RequestMapping(value = "/edit",method = RequestMethod.POST)
    public String edit(Model model,HttpServletRequest request, @Valid UserGroup userGroup , BindingResult result, RedirectAttributes redirectAttributes){
        String roleList=request.getParameter("roleList");
        if (!result.hasErrors()){
            List<String> list= new ArrayList(Arrays.asList(roleList.split(",")));
            Integer count=service.edit(userGroup,list);
            if (count>0){
                redirectAttributes.addFlashAttribute("message","修改成功！");
                return "redirect:/userGroup";
            }
        }
        //所有菜单
        List<Menu> menuList=new ArrayList<Menu>();
        Menu.sortList(menuList, menuService.getAll(),"0",true);
        model.addAttribute("menuList",menuList);
        model.addAttribute("userGroup",userGroup);
        model.addAttribute("roleList",roleList);
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
