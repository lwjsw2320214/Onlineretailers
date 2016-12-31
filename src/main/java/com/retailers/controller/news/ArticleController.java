package com.retailers.controller.news;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.retailers.common.Base.BaseController;
import com.retailers.common.ConfigProperties;
import com.retailers.common.DateUtils;
import com.retailers.common.IdGen;
import com.retailers.entity.Article;
import com.retailers.service.ArticleService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

/**
 * Created by GC on 2016/12/29.
 * @since JDK1.7
 */
@Controller
@RequestMapping(value = "/article")
public class ArticleController extends BaseController {

    private static final String filePaht= ConfigProperties.getConfig("filePath");
    private static final String fileUrl=ConfigProperties.getConfig("fileUrl");

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

    @RequestMapping(value = "/newsAdd",method = RequestMethod.GET)
    public String newsAdd(Model model,Article article){
        model.addAttribute("article",article);
        return "news/newsAdd";
    }

    @RequestMapping(value = "/newsAdd" , method = RequestMethod.POST)
    public String newsAdd(Model model, @Valid Article article, BindingResult result, RedirectAttributes redirectAttributes){
        if (!result.hasErrors()){
            article.setNewsType(1);
            Integer count= service.add(article);
            if (count>0){
                redirectAttributes.addFlashAttribute("message","添加成功！");
                return "redirect:/article/news";
            }
        }
        model.addAttribute("article",article);
        return "news/newsAdd";
    }
    @RequestMapping(value = "/newsEdit/{id}" , method = RequestMethod.GET)
    public String newsEdit(@PathVariable String id, Model model){
        Article article=new Article();
        article.setId(id);
        article.setNewsType(1);
        article=service.getArticleForId(article);
        model.addAttribute("article",article);
        return "news/newsEdit";
    }

    @RequestMapping(value = "/newsEdit" , method = RequestMethod.POST)
    public String newsEdit(Model model, @Valid Article article, BindingResult result, RedirectAttributes redirectAttributes){
         if (!result.hasErrors()){
             Integer count=service.edit(article);
             if (count>0){
                 redirectAttributes.addFlashAttribute("message","修改成功！");
                 return "redirect:/article/news";
             }else {
                 redirectAttributes.addFlashAttribute("message","修改失败！");
                 return "redirect:/article/news";
             }
         }
        model.addAttribute("article",article);
        return "news/newsEdit";
    }

    @RequestMapping(value = "/newsDelete/{id}" , method = RequestMethod.GET)
    public String newsDelete(@PathVariable String id, Model model, RedirectAttributes redirectAttributes){
        Article article=new Article();
        article.setId(id);
        article.setNewsType(1);
        Integer count =service.delete(article);
        if (count>0){
            redirectAttributes.addFlashAttribute("message","删除成功！");
            return "redirect:/article/news";
        }
        redirectAttributes.addFlashAttribute("message","删除失败！");
        return "redirect:/article/news";
    }

    //=================================================使用须知=================================================//

    @RequestMapping("/notice")
    public String notice(Model model, HttpServletRequest request, Article article){
        String page="1";
        if (StringUtils.isNumeric(request.getParameter("page"))){
            page=request.getParameter("page");
        }
        article.setNewsType(2);
        Integer pageNum=Integer.parseInt(page) ;
        PageHelper.startPage(pageNum,pageSize);
        List<Article> list=service.getAllList(article);;
        PageInfo<Article> pageInfo=new PageInfo<Article>(list);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("article",article);
        return "news/noticeIndex";
    }

    @RequestMapping(value = "/noticeAdd",method = RequestMethod.GET)
    public String noticeAdd(Model model,Article article){
        model.addAttribute("article",article);
        return "news/noticeAdd";
    }

    @RequestMapping(value = "/noticeAdd" , method = RequestMethod.POST)
    public String noticeAdd(Model model, @Valid Article article, BindingResult result, RedirectAttributes redirectAttributes){
        if (!result.hasErrors()){
            article.setNewsType(2);
            Integer count= service.add(article);
            if (count>0){
                redirectAttributes.addFlashAttribute("message","添加成功！");
                return "redirect:/article/notice";
            }
        }
        model.addAttribute("article",article);
        return "news/noticeAdd";
    }
    @RequestMapping(value = "/noticeEdit/{id}" , method = RequestMethod.GET)
    public String noticeEdit(@PathVariable String id, Model model){
        Article article=new Article();
        article.setId(id);
        article.setNewsType(2);
        article=service.getArticleForId(article);
        model.addAttribute("article",article);
        return "news/noticeEdit";
    }

    @RequestMapping(value = "/noticeEdit" , method = RequestMethod.POST)
    public String noticeEdit(Model model, @Valid Article article, BindingResult result, RedirectAttributes redirectAttributes){
        if (!result.hasErrors()){
            Integer count=service.edit(article);
            if (count>0){
                redirectAttributes.addFlashAttribute("message","修改成功！");
                return "redirect:/article/notice";
            }else {
                redirectAttributes.addFlashAttribute("message","修改失败！");
                return "redirect:/article/notice";
            }
        }
        model.addAttribute("article",article);
        return "news/noticeEdit";
    }

    @RequestMapping(value = "/noticeDelete/{id}" , method = RequestMethod.GET)
    public String noticeDelete(@PathVariable String id, Model model, RedirectAttributes redirectAttributes){
        Article article=new Article();
        article.setId(id);
        article.setNewsType(2);
        Integer count =service.delete(article);
        if (count>0){
            redirectAttributes.addFlashAttribute("message","删除成功！");
            return "redirect:/article/notice";
        }
        redirectAttributes.addFlashAttribute("message","删除失败！");
        return "redirect:/article/notice";
    }



    @RequestMapping(value = "/imgAdd")
    @ResponseBody
    public Object imgAdd(@RequestParam("Filedata")CommonsMultipartFile file){
        String imgUrlPath="";
        if (file!=null){
            String fileName="";
            String dirDate="";
            fileName=IdGen.getuuid()+".jpg";
            dirDate=DateUtils.getDate();
            Path path= Paths.get(filePaht,dirDate,fileName);
            File newFile=path.toFile();
            if (!newFile.getParentFile().exists()&&!newFile.getParentFile().isDirectory()){
                newFile.getParentFile().mkdir();
            }
            try{
                BufferedImage image = ImageIO.read(file.getInputStream());
                ImageIO.write(image, "jpg", newFile);
                imgUrlPath=fileUrl+"gasfile/"+dirDate+"/"+fileName;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return imgUrlPath;
    }

}
