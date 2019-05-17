package com.lee.film.service.impl;

import com.lee.film.mapper.UserMapper;
import com.lee.film.model.Film;
import com.lee.film.model.User;
import com.lee.film.service.IUserservice;
import com.lee.film.utils.MailUtils;
import com.lee.film.utils.UUIDUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;

import javax.mail.MessagingException;
import java.util.List;

/**
 * @author
 * @create 2019-03-12 17:26
 */

@Service
@Transactional
public class IUserserviceimpl implements IUserservice {

    @Autowired
    private UserMapper userMapper;

    @Override
    public void userRegist(User user) {
        user.setUid(UUIDUtils.getId());
        user.setCode(UUIDUtils.getId());


        int count=userMapper.insert(user);
        try {
            MailUtils.sendMail(user.getEmail(),user.getCode());
        }
        catch (MessagingException e) {
            e.printStackTrace();
        }


    }

    @Override
    public boolean userActive(@RequestParam(value="code",required=true) String code) {
        System.out.println(code);

        User user=userMapper.selectBycode(code);

        if(user!=null)

        {
            System.out.println("有");

            user.setState(1);
            user.setCode(null);
            userMapper.updateByPrimaryKey(user);
            return true;
        }
        else
        {
            return false;

        }



    }

    @Override
    public User findLogin(String username) {
        User user =userMapper.selectByUsername(username);

        return user;
    }

    @Override
    public void userUpdate(User user) {
        userMapper.updateByusername(user);
    }

//    @Override
//    public void send(Contact contact) {
//        try {
//            SendUtils.getMail("892628217@qq.com",contact.getMessage());
//            SendUtils.sendMail(contact.getEmail(),"我们已收到反馈，谢谢。");
//        }
//        catch (MessagingException e) {
//            e.printStackTrace();
//        }
//
//    }

    @Override
    public String finduser(String username) {
        int flag= userMapper.finduser(username);
        if(flag==1)
        {
            return "1";
        }
        else
        {
            return "0";
        }
    }

    @Override
    public void Updatepw(String username , String password) {
//        userMapper.updatepw(user);
        System.out.println("fasdfasdfsadf");
        userMapper.updatepw(username,password);
//        System.out.println(user);
    }

    @Override
    public void updateinfo(User user) {
        userMapper.updateinfo(user);
    }

    @Override
    public boolean resetpw(String username, String email, String code) {
       String codeed=  userMapper.checkemail(username);
       if(codeed.equals(code))
       {
           return true;

       }
       else return false;
    }

    @Override
    public void insertcode(String s, String code) {
        userMapper.insertcode(code,s);
    }

    @Override
    public boolean checkcode(String s, String ecode) {

        boolean flag;
        int a= userMapper.checkcode( s, ecode);
        if(a==1)
        {
            return true;
        }
        else
            return false;
    }

    @Override
    public void updatetask(User user) {
        userMapper.updatask(user);
        userMapper.updaistask(user);
        userMapper.updamytake(user);

    }

    @Override
    public User findusered(String username) {
        return  userMapper.selectByUsername(username);

    }

    @Override
    public List<Film> findfilm() {

        return userMapper.findfilm();
    }

//    @Override
//    public User userLogin(User user) {
//
//
//
//
//
//    }





}
