package com.retailers.controller.member;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.retailers.common.Base.BaseController;
import com.retailers.entity.UserMember;
import com.retailers.service.UserMemberService;
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
@RequestMapping(value = "/member")
public class MemberController extends BaseController {

    @Autowired
    UserMemberService service;

    @RequestMapping
    public String index(Model model, HttpServletRequest request, UserMember userMember){
        String page="1";
        if (StringUtils.isNumeric(request.getParameter("page"))){
            page=request.getParameter("page");
        }
        Integer pageNum=Integer.parseInt(page) ;
        PageHelper.startPage(pageNum,pageSize);
        List<UserMember> list=service.getAll(userMember);
        PageInfo<UserMember> pageInfo=new PageInfo<UserMember>(list);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("userMember",userMember);
        return  "member/index";
    }

    @RequestMapping(value = "/edit/{id}",method =RequestMethod.GET )
    public String edit(@PathVariable String id, Model model){
        UserMember userMember=service.getUserForId(id);
        model.addAttribute("userMember",userMember);
        return "member/edit";
    }

    @RequestMapping(value = "/edit",method =RequestMethod.POST )
    public String edit(Model model ,@Valid UserMember userMember, BindingResult result, RedirectAttributes redirectAttributes){
        if (!result.hasErrors()){
            Integer count=service.edit(userMember);
            if (count>0){
                redirectAttributes.addFlashAttribute("message","修改成功！");
                return "redirect:/member";
            }else {
                redirectAttributes.addFlashAttribute("message","修改失败！");
                return "redirect:/member";
            }
        }
        model.addAttribute("userMember",userMember);
        return "member/edit";
    }


    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable String id, Model model, RedirectAttributes redirectAttributes){
       Integer count= service.delete(id);
        if (count>0){
            redirectAttributes.addFlashAttribute("message","删除成功！");
        }else{
            redirectAttributes.addFlashAttribute("message","删除失败！");
        }
        return "redirect:/member";
    }
}
