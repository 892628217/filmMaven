package com.lee.film.mapper;

import com.lee.film.model.Orders;
import com.lee.film.model.OrdersEX;

import java.util.List;

public interface OrderMapper {

    void setOrder(String oid, String setseat, String uid, String fid, int price, String time);


    void upSucess(String out_trade_no);

    Orders findorder(String out_trade_no);

    void insertSeat(String ss1);

    int findTotalRecords(String uid);
//    int findTotalRecords();

    List<OrdersEX> findAllTasksWithPage(int startIndex, int pageSize,String uid);
}