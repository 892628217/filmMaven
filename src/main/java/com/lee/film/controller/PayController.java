package com.lee.film.controller;

import com.lee.film.mapper.OrderMapper;
import com.lee.film.model.Orders;
import com.lee.film.model.User;
import com.lee.film.service.IOrdersservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/**
 * @author
 * @create 2019-05-07 9:50
 */
@Controller
@RequestMapping("pay")
public class PayController {

    @Autowired
    @Qualifier("IOrdersserviceimpl")
    IOrdersservice Ordersservice;

    @Autowired
    OrderMapper orderMapper;



    @RequestMapping("setorder")
    public void setorder(String setseat,String fid, String oid, HttpServletResponse response,int price,String times ,HttpServletRequest request) throws IOException {

        User user= (User) request.getSession().getAttribute("loginUser");
        String uid=user.getUid();

        System.out.println(fid);
        orderMapper.setOrder(oid,setseat,uid,fid,price,times);
//        response.getWriter().println(1);




    }



    @RequestMapping("success")
    public  String success(HttpServletRequest request) throws UnsupportedEncodingException {

        Map<String,String> params = new HashMap<String,String>();
        Map<String,String[]> requestParams = request.getParameterMap();
        for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
            String name = (String) iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i]
                        : valueStr + values[i] + ",";
            }
            //乱码解决，这段代码在出现乱码时使用
            try {
                valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
            }
            catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            params.put(name, valueStr);
        }



            //商户订单号
            String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),"UTF-8");

//        System.out.println(out_trade_no);

        orderMapper.upSucess(out_trade_no);


        Orders orders= orderMapper.findorder(out_trade_no);
         String ss= orders.getSeat();
        String ss1=null;
        String ss2=null;
        int length;
        for(int i=0;i<ss.length();i++)
        {
            if(ss.charAt(i)=='排')
            {
                ss1= (String) ss.subSequence(0,i);



                ss2= (String) ss.subSequence(i+1,ss.length()-1);

            }





        }
        ss1=ss1+"_"+ss2;
        orderMapper.insertSeat(ss1);










        //支付宝交易号

            String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"),"UTF-8");


        //付款金额

            String total_amount = new String(request.getParameter("total_amount").getBytes("ISO-8859-1"),"UTF-8");




        //商品描述，可空


//            System.out.println(body);



        return "redirect:/user/index.do";
    }


}
