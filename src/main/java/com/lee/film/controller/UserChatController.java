package com.lee.film.controller;

import com.lee.film.service.IUserservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author
 * @create 2019-03-22 11:00
 */

@RequestMapping("chat")
public class UserChatController {
    @Autowired
    IUserservice userservice;


    public String chat()
    {
//        return ""
        return null;
    }
    @RequestMapping("home")
    public String chatHome()
    {
        return null;
//        return "redirect:"

    }






}
