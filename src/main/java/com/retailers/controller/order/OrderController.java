package com.retailers.controller.order;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.retailers.common.Base.BaseController;
import com.retailers.common.DateUtils;
import com.retailers.entity.LoginUser;
import com.retailers.entity.ManageLogin;
import com.retailers.entity.Order;
import com.retailers.service.OrderService;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by GC on 2016/12/27.
 */
@Controller
@RequestMapping(value = "/order")
public class OrderController extends BaseController {

    @Autowired
    OrderService service;

    @RequestMapping
    public String index(Model model, HttpServletRequest request, Order order){
        String page="1";
        if (StringUtils.isNumeric(request.getParameter("page"))){
            page=request.getParameter("page");
        }
        Integer pageNum=Integer.parseInt(page) ;
        PageHelper.startPage(pageNum,pageSize);
        List<Order> list=service.getAll(order);
        PageInfo<Order> pageInfo=new PageInfo<Order>(list);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("order",order);
        return "order/index";
    }

    @RequestMapping(value = "/info/{id}",method = RequestMethod.GET)
    public String info(@PathVariable String id,Model model){
        Order order=service.getOrder(id);
        model.addAttribute("order",order);
        return "order/info";
    }

    @RequestMapping(value = "/edit/{id}",method = RequestMethod.GET)
    public String edit(@PathVariable String id,Model model){
        Order order=service.getOrder(id);
        model.addAttribute("order",order);
        return "order/edit";
    }

    @RequestMapping(value = "/edit",method = RequestMethod.POST)
    public String edit(Model model,Order order, RedirectAttributes redirectAttributes){
        Integer count= service.edit(order);
        if (count>0){
            Subject currentUser = SecurityUtils.getSubject();
            ManageLogin loginUser=(ManageLogin)currentUser.getPrincipal();
            logger.info(DateUtils.getDateTime()+":用户======"+loginUser.getLoginName()+"=====修改订单"+order.getId());
            redirectAttributes.addFlashAttribute("message","编辑成功！");
            return "redirect:/order";
        }
        order=service.getOrder(order.getId());
        model.addAttribute("order",order);
        return "order/edit";
    }

}
