package com.lee.film.service;

import com.lee.film.model.Film;
import com.lee.film.model.User;

import java.util.List;

/**
 * @author
 * @create 2019-03-12 17:22
 */
public interface IUserservice {


    void userRegist(User user);


    boolean userActive(String code);

//    User  userLogin(User user);

    User findLogin(String username);

    void userUpdate(User user);

//    void send(Contact contact);

    String finduser(String username);

    void Updatepw(String username, String password);

    void updateinfo(User user);

    boolean resetpw(String username, String email, String code);

    void insertcode(String s, String code);

    boolean checkcode(String s, String ecode);

    void updatetask(User user);

    User findusered(String username);

    List<Film> findfilm();
}
