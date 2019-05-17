package com.lee.film.service;

import com.lee.film.model.Category;

import java.util.List;

/**
 * @author
 * @create 2019-03-17 21:01
 */
public interface ICategoryservice {
    List<Category> getAllCats()throws Exception;
    void addCategory(Category c)throws Exception;





}
