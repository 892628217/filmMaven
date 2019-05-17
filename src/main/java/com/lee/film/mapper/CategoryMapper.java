package com.lee.film.mapper;

import com.lee.film.model.Category;

import java.util.List;

public interface CategoryMapper {

    List<Category> getAllCats()throws Exception;
    void addCategory(Category category);


}