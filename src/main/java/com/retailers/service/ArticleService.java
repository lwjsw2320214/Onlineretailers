package com.retailers.service;

import com.retailers.dao.IArticleDao;
import com.retailers.entity.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by GC on 2016/12/29.
 */
@Service
@Transactional(readOnly = true)
public class ArticleService {
    @Autowired
    IArticleDao dao;

    /**
     * 查询所有文章
     * */
    public List<Article> getAllList(Article article){
        return  dao.getAllList(article);
    }
}
