package com.retailers.controller.System;

import com.retailers.entity.Menu;
import com.retailers.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
    public  String add(Model model){
        model.addAttribute("menu",new Menu());
        return "System/menuAdd";
    }
    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public  String add(Model model, @Valid Menu menu,BindingResult result){
        if(result.hasErrors()){
            model.addAttribute("menu",menu);
            return "System/menuAdd";
        }
        return "System/menuAdd";
    }

}
