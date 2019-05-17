package com.lee.film.service;

import com.lee.film.model.PageModel;

/**
 * @author
 * @create 2019-05-16 20:39
 */
public interface IRunservice {


    PageModel findAlltasksWithPage(int num,String uid);


}
