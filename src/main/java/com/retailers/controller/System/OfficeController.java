package com.retailers.controller.System;

import com.retailers.entity.ManageOffice;
import com.retailers.service.OfficeService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by GC on 2016/12/08.
 */
@Controller
@RequestMapping("/office")
public class OfficeController {

    @Autowired
    OfficeService service;

    @RequestMapping
    public String index(Model model){
        List<ManageOffice> list=new ArrayList<ManageOffice>();
        List<ManageOffice> manageOfficeList=service.getAll();
        ManageOffice.sortList(list,manageOfficeList,"0",true);
        model.addAttribute("list",list);
        return "system/office";
    }

    @RequestMapping(value = "/add",method = RequestMethod.GET)
    public String add(String id,Model model){
        ManageOffice manageOffice=new ManageOffice();
        if(StringUtils.isBlank(id)){
            ManageOffice p=new ManageOffice();
            p.setOfficeName("公司部门");
            manageOffice.setPid("0");
            manageOffice.setParent(p);
        }else{
           ManageOffice p=service.getManageOfficeForId(id);
            manageOffice.setPid(p.getId());
            manageOffice.setParent(p);
        }
        model.addAttribute("manageOffice",manageOffice);
        return "system/officeAdd";
    }

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String add(Model model, @Valid ManageOffice manageOffice, BindingResult result, RedirectAttributes redirectAttributes){
        if(result.hasErrors()){
            model.addAttribute("manageOffice",manageOffice);
            return "system/officeAdd";
        }
        Integer count= service.add(manageOffice);
        if (count>0){
            redirectAttributes.addFlashAttribute("message","添加成功！");
            return "redirect:/office";
        }
        model.addAttribute("manageOffice",manageOffice);
        return "system/officeAdd";
    }


    @RequestMapping(value = "/edit/{id}",method = RequestMethod.GET)
    public String edit(@PathVariable String id, Model model){
        ManageOffice manageOffice=service.getManageOfficeForId(id);
        if (StringUtils.isBlank(manageOffice.getParent().getOfficeName())){
            manageOffice.getParent().setOfficeName("公司部门");
        }
        model.addAttribute("manageOffice",manageOffice);
        return "system/officeEdit";
    }

    @RequestMapping(value = "/edit",method = RequestMethod.POST)
    public String edit(Model model, @Valid ManageOffice manageOffice, BindingResult result, RedirectAttributes redirectAttributes){
        if (result.hasErrors()){
            model.addAttribute("manageOffice",manageOffice);
            return "system/officeEdit";
        }
        Integer count=service.edit(manageOffice);
        if(count>0){
            redirectAttributes.addFlashAttribute("message","修改成功！");
            return "redirect:/office";
        }
        model.addAttribute("manageOffice",manageOffice);
        return "system/officeEdit";
    }

    @RequestMapping(value = "/delete/{id}",method = RequestMethod.GET)
    public String delete(@PathVariable String id, Model model, RedirectAttributes redirectAttributes){
        Integer count=service.delete(id);
        if (count>0){
            redirectAttributes.addFlashAttribute("message","删除成功！");
        }else {
            redirectAttributes.addFlashAttribute("message","删除失败！");
        }
        return "redirect:/office";
    }

    @RequestMapping("/getTreeOffice")
    @ResponseBody
    public Object getTreeOffice(){
        List<Map<Object,Object>> listMap=new ArrayList<Map<Object, Object>>();
        Map<Object,Object> pmap=new HashMap();
        pmap.put("id","0");
        pmap.put("pId","");
        pmap.put("name","公司部门");
        pmap.put("open",true);
        listMap.add(pmap);
        List<ManageOffice> list=new ArrayList<ManageOffice>();
        List<ManageOffice> manageOfficeList=service.getAll();
        ManageOffice.sortList(list,manageOfficeList,"0",true);
        for (ManageOffice mo:list) {
            Map<Object,Object> map=new HashMap();
            map.put("id",mo.getId());
            map.put("pId",mo.getPid());
            map.put("name",mo.getOfficeName());
            listMap.add(map);
        }
        return  listMap;
    }
}
