package com.retailers.controller.order;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.retailers.common.Base.BaseController;
import com.retailers.entity.Order;
import com.retailers.service.OrderService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

}
