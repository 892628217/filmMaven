package com.lee.film.service.impl;

import com.lee.film.mapper.OrderMapper;
import com.lee.film.model.OrdersEX;
import com.lee.film.model.PageModel;
import com.lee.film.service.IRunservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author
 * @create 2019-05-16 20:42
 */

@Service
@Transactional
public class IRunserviceimpl implements IRunservice {

    @Autowired
    OrderMapper orderMapper;


    @Override
    public PageModel findAlltasksWithPage(int num ,String uid)
    {


        int totalRecords=orderMapper.findTotalRecords(uid);
        PageModel pageModel=new PageModel(num,totalRecords,3);
        List<OrdersEX> list = orderMapper.findAllTasksWithPage(pageModel.getStartIndex(),pageModel.getPageSize(),uid);
        pageModel.setList(list);
        pageModel.setUrl("user/order");
        return pageModel;
//        return null;



    }
}
