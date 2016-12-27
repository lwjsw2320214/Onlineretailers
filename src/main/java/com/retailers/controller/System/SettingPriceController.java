package com.retailers.controller.System;

import com.retailers.entity.SettingPrice;
import com.retailers.service.SettingPriceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

/**
 * Created by GC on 2016/12/27.
 */
@Controller
@RequestMapping(value = "/settingPrice")
public class SettingPriceController {
    @Autowired
    SettingPriceService service;


    @RequestMapping()
    public String index(Model model, SettingPrice settingPrice){
        settingPrice=service.getSettingPrice();
        if (settingPrice==null){
            settingPrice=new SettingPrice();
        }
        model.addAttribute("settingPrice",settingPrice);
        return "system/settingPrice";
    }

    @RequestMapping(value = "/edit",method = RequestMethod.POST)
    public String edit(Model model, @Valid SettingPrice settingPrice, BindingResult result, RedirectAttributes redirectAttributes){
        if(!result.hasErrors()){
            Integer count= service.edit(settingPrice);
            if (count>0){
                redirectAttributes.addFlashAttribute("message","设置成功！");
                return "redirect:/settingPrice";
            }
        }
        model.addAttribute("settingPrice",settingPrice);
        return "system/settingPrice";
    }
}
