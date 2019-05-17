package com.lee.film.service.impl;

import com.lee.film.mapper.FilmMapper;
import com.lee.film.model.Film;
import com.lee.film.model.PageModel;
import com.lee.film.service.IFilmservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author
 * @create 2019-03-17 13:49
 */


@Service
@Transactional
public class IFilmserviceimpl implements IFilmservice {

    @Autowired
    FilmMapper filmMapper;



    @Override
    public PageModel findProductsByCidwithPage(String cid, int curNum) {
        //1_创建PageModel对象 目的:计算分页参数
//        //统计当前分类下商品个数  select count(*) from product where cid=?
//        int totalRecords=filmMapper.findTotalRecords(cid);
//        PageModel pm=new PageModel(curNum,totalRecords,12);
//        //2_关联集合 select * from product where cid =? limit ? ,?
//        List list=filmMapper.findProductsByCidWithPage(cid,pm.getStartIndex(),pm.getPageSize());
//        pm.setList(list);
//        //3_关联url
//        pm.setUrl("ProductServlet?method=findProductsByCidWithPage&cid="+cid);
//        return pm;
        return null;
    }

//    @Override
//    public PageModel findProductsByCidWithPage(String cid, int curNum) {
//        return null;
//    }

    @Override
    public PageModel findAllproductsWithPage(int num) {
//1_创建对象
//		int totalRecords=ProductDao.findTotalRecords();
//		PageModel pm=new PageModel(curNum,totalRecords,5);
//		//2_关联集合 select * from product limit ? , ?
//		List<Product> list=ProductDao.findAllProductsWithPage(pm.getStartIndex(),pm.getPageSize());
//		pm.setList(list);
//		//3_关联url
//		pm.setUrl("AdminProductServlet?method=findAllProductsWithPage");
//		return pm;


        int totalRecords=filmMapper.findTotalRecords();
        PageModel pageModel=new PageModel(num,totalRecords,5);
      List<Film> list = filmMapper.findAllFilmsWithPage(pageModel.getStartIndex(),pageModel.getPageSize());
        pageModel.setList(list);
        pageModel.setUrl("admin/findAllProduct.do");
        return pageModel;
    }

    @Override
    public void savefilm(Film film) {
        filmMapper.savefilm(film);
    }

}
