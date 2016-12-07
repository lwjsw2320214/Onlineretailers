package com.retailers.controller.System;

import com.retailers.entity.Menu;
import com.retailers.service.MenuService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by 刘维军 on 2016/12/02.
 */
@Controller
@RequestMapping("/menu")
public class MenuController {

    @Autowired
    MenuService service;
    /**
     * 菜单管理首页
     * */
    @RequestMapping
    public String index(Model model){
        List<Menu> sourcelist=service.getAll();
        List<Menu> list=new ArrayList<Menu>();
        Menu.sortList(list,sourcelist,"0",true);
        model.addAttribute("list",list);
        return "System/menu";
    }

    @RequestMapping(value = "/getTreeMenu")
    @ResponseBody
    public Object getTreeMenu(){
        List<Map<Object,Object>> listMap=new ArrayList<Map<Object, Object>>();
        Map<Object,Object> pmap=new HashMap();
        pmap.put("id","0");
        pmap.put("pId","");
        pmap.put("name","功能菜单");
        pmap.put("open",true);
        listMap.add(pmap);
        List<Menu> sourcelist=service.getAll();
        List<Menu> list=new ArrayList<Menu>();
        Menu.sortList(list,sourcelist,"0",true);
        for (Menu m:list ) {
            Map<Object,Object> map=new HashMap();
            map.put("id",m.getId());
            map.put("pId",m.getPid());
            map.put("name",m.getMenuName());
            listMap.add(map);
        }
        return listMap;
    }

    /**
     *
     * */
    @RequestMapping(value = "/add",method = RequestMethod.GET)
    public  String add(String id, Model model){
        Menu menu=new Menu();
        if(StringUtils.isBlank(id)){
            Menu p=new Menu();
            p.setMenuName("功能菜单");
            menu.setPid("0");
            menu.setParent(p);

        }else{
            Menu p=service.getMenuForId(id);
            menu.setPid(p.getId());
            menu.setParent(p);
        }
        model.addAttribute("menu",menu);
        return "System/menuAdd";
    }

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public  String add(Model model, @Valid Menu menu, BindingResult result, RedirectAttributes redirectAttributes){
        if(result.hasErrors()){
            model.addAttribute("menu",menu);
            return "System/menuAdd";
        }
        Integer count=service.add(menu);
        if (count>0){
            redirectAttributes.addFlashAttribute("message","添加成功！");
            return "redirect:/menu";
        }
        model.addAttribute("menu",menu);
        return "System/menuAdd";
    }

    @RequestMapping(value = "/edit/{id}",method = RequestMethod.GET)
    public  String edit(@PathVariable String id,Model model){
        Menu menu=service.getMenuForId(id);
        if (StringUtils.isBlank(menu.getParent().getMenuName())){
            menu.getParent().setMenuName("功能菜单");
        }
        model.addAttribute("menu",menu);
        return "System/editMenu";
    }

    @RequestMapping(value = "/edit",method = RequestMethod.POST)
    public String edit(Model model, @Valid Menu menu, BindingResult result, RedirectAttributes redirectAttributes){
        if(result.hasErrors()){
            model.addAttribute("menu",menu);
            return "System/editMenu";
        }
        Integer count=service.edit(menu);
        if (count>0) {
            redirectAttributes.addFlashAttribute("message", "修改成功！");
            return "redirect:/menu";
        }
        model.addAttribute("menu",menu);
        return "System/editMenu";
    }


    @RequestMapping(value = "/delete/{id}",method = RequestMethod.GET)
    public  String delete( @PathVariable String id,Model model, RedirectAttributes redirectAttributes){
        Integer count=service.delete(id);
        if (count>0) {
            redirectAttributes.addFlashAttribute("message", "删除成功！");
        }else {
            redirectAttributes.addFlashAttribute("message", "删除失败！");
        }
        return "redirect:/menu";
    }

}
