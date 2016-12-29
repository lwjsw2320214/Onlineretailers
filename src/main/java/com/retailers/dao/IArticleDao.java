package com.retailers.dao;

import com.retailers.entity.Article;

import java.util.List;

/**
 * Created by GC on 2016/12/29.
 */
public interface IArticleDao {

    /**
     * 查询所有文章
     * */
     List<Article> getAllList(Article article);

}
