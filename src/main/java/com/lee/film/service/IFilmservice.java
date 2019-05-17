package com.lee.film.service;

import com.lee.film.model.Film;
import com.lee.film.model.PageModel;

/**
 * @author
 * @create 2019-03-17 13:46
 */
public interface IFilmservice {

    public PageModel findProductsByCidwithPage(String cid, int curNum);


//    PageModel findProductsByCidWithPage(String cid, int curNum);

    PageModel findAllproductsWithPage(int num);
    public void  savefilm(Film film);
}
