package com.retailers.controller.news;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.retailers.common.Base.BaseController;
import com.retailers.entity.Article;
import com.retailers.service.ArticleService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by GC on 2016/12/29.
 */
@Controller
@RequestMapping(value = "/article")
public class ArticleController extends BaseController {

    @Autowired
    ArticleService service;

    @RequestMapping("/news")
    public String newsList(Model model, HttpServletRequest request, Article article){
        String page="1";
        if (StringUtils.isNumeric(request.getParameter("page"))){
            page=request.getParameter("page");
        }
        article.setNewsType(1);
        Integer pageNum=Integer.parseInt(page) ;
        PageHelper.startPage(pageNum,pageSize);
        List<Article> list=service.getAllList(article);;
        PageInfo<Article> pageInfo=new PageInfo<Article>(list);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("article",article);
        return "news/newsIndex";
    }

    @RequestMapping(value = "/newsAdd")
    public String newsAdd(Model model,Article article){
        model.addAttribute("article",article);
        return "news/newsAdd";
    }
}
