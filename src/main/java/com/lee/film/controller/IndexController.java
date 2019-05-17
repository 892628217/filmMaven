package com.lee.film.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author
 * @create 2019-05-04 9:59
 */
@Controller
public class IndexController {

    @RequestMapping("/")
    public  String index()
    {

        String ss= "4排6座";
        String ss1=null;
        String ss2=null;
        int length;
        for(int i=0;i<ss.length();i++)
        {
            if(ss.charAt(i)=='排')
            {
                ss1= (String) ss.subSequence(0,i);
            }


            if (ss.charAt(i)=='座')
            {
                ss2= (String) ss.subSequence(i,-1);
            }


        }
        ss1=ss1+"_"+ss2;
        System.out.println(ss1);


        return "user/index";

    }
}
