package com.retailers.controller.gas;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.retailers.common.Base.BaseController;
import com.retailers.entity.Gas;
import com.retailers.service.GasService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by GC on 2016/12/26.
 */
@Controller
@RequestMapping(value = "/gas")
public class GasController extends BaseController {

    @Autowired
    GasService service;

    @RequestMapping
    public String index(Model model, HttpServletRequest request, Gas gas){
        String page="1";
        if (StringUtils.isNumeric(request.getParameter("page"))){
            page=request.getParameter("page");
        }
        Integer pageNum=Integer.parseInt(page) ;
        PageHelper.startPage(pageNum,pageSize);
        List<Gas> list=service.getAll(gas);
        PageInfo<Gas> pageInfo=new PageInfo<Gas>(list);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("gas",gas);
        return "gas/gasIndex";
    }

}
