package com.lee.film.service.impl;

import com.lee.film.mapper.CategoryMapper;
import com.lee.film.model.Category;
import com.lee.film.service.ICategoryservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author
 * @create 2019-03-17 21:04
 */

@Service
@Transactional
public class ICategoryserviceimpl implements ICategoryservice {

    @Autowired
    CategoryMapper categoryMapper;


    @Override
    public List<Category> getAllCats() throws Exception {

      List<Category> list= categoryMapper.getAllCats();

        return list;
//        return null;
    }

    @Override
    public void addCategory(Category c) throws Exception {
        categoryMapper.addCategory(c);

    }
}
