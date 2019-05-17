package com.lee.film.controller;


import com.lee.film.mapper.UserMapper;
import com.lee.film.model.Film;
import com.lee.film.model.PageModel;
import com.lee.film.model.User;
import com.lee.film.service.IRunservice;
import com.lee.film.service.IUserservice;
import com.lee.film.utils.MailUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

@Controller
@RequestMapping("user")
public class UserController {


    @Autowired
    @Qualifier("IUserserviceimpl")
    IUserservice userservice;

    @Autowired
    @Qualifier("IRunserviceimpl")
    IRunservice iRunservice;

    @Autowired
    UserMapper userMapper;


    @RequestMapping("list")
    public String list(Model model){








        return "user/list";
    }







  @RequestMapping("order")
    public String order(Model model,@RequestParam("id")String id,@RequestParam int num){

//      List<OrdersEX> orders=  userMapper.findOrder(id);
//
      try {

          PageModel pageModel=iRunservice.findAlltasksWithPage(num,id);

          model.addAttribute("page",pageModel);
      }catch (Exception e){
          e.printStackTrace();

      }

//
//      model.addAttribute("orders",orders);




      return "user/order";
    }


    @RequestMapping("setpw")
    public String setpw(){
//        userservice.findpw()
        return "user/setpw";
    }

//    @RequestMapping("resetpw")
//    public String resetpw(String username,String email,String code) throws MessagingException {
////        userservice.findpw()
//
//        String str="ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
//        StringBuilder sb=new StringBuilder(4);
//        for(int i=0;i<4;i++)
//        {
//            char ch=str.charAt(new Random().nextInt(str.length()));
//            sb.append(ch);
//        }
//
//        MailUtils.sendMailcode(email,sb.toString());
//        boolean flag= userservice.resetpw(username,email,code);
////        if(flag==true)
////        {
////
////        }
//        return "user/index";
//    }




    @RequestMapping("contact")
    public String contact(){
        return "user/contact";
    }


@RequestMapping("checkcode")
    public String checkcode(String ecode, String username, String password, HttpServletRequest request){
try {
    boolean flag= userservice.checkcode(username,ecode);
    if(flag==true)

    {
        userservice.Updatepw(username,password);
        String msg="修改密码成功，请登录";
        request.setAttribute("msg",msg);
        return "user/login";
    }
    else {
        String msg="<h5 style='color:red'>验证码有误或者与用户名不匹配</h5>";
        request.setAttribute("msg",msg);
        return "user/setpw";


    }

}
catch (Exception e)
{
//    String msg="验证码不能为空";
    String msg="<h5 style='color:red'>验证码不能为空</h5>";

    request.setAttribute("msg",msg);
    return "user/setpw";

}
//    boolean flag= userservice.checkcode(username,ecode);
//    if(ecode==null)
//    {
//        String msg="验证码不能为空";
//        request.setAttribute("msg",msg);
//        return "user/setpw";
//
//    }
//    if(flag==true)
//
//    {
//        userservice.Updatepw(username,password);
//        String msg="修改密码成功，请登录";
//        request.setAttribute("msg",msg);
//        return "user/login";
//    }
//    else {
//        String msg="验证码有误或者与用户名不匹配";
//        request.setAttribute("msg",msg);
//        return "user/setpw";
//
//
//    }

    }




    @RequestMapping("getcode")
    public void getcode(String email , String username){
//        System.out.println("asdfsdf");

        String str="ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        StringBuilder sb=new StringBuilder(4);
        for(int i=0;i<4;i++)
        {
            char ch=str.charAt(new Random().nextInt(str.length()));
            sb.append(ch);
        }
//        System.out.println(sb.toString());
        String code=sb.toString();
        userservice.insertcode(code,username);

        try {
            MailUtils.sendMailcode(email,code);
        }
        catch (MessagingException e) {
            e.printStackTrace();
        }
//        return "user/login";
    }




@RequestMapping("updateInfo")
    public String updateInfo(User user, HttpServletRequest request){


    User user2= (User) request.getSession().getAttribute("loginUser");
     user2.setPhone(user.getPhone());

    userservice.updateinfo(user);
//    System.out.println(user);

        return "user/info";
    }

@RequestMapping("updatePw")
    public String updatePw(String oldPw , String password1, HttpServletRequest request){

       User user= (User) request.getSession().getAttribute("loginUser");
       try {
           if(user.getPassword().equals(oldPw))
           {
//            user.setPassword(password1);
//               password1=user.getPassword();
               userservice.Updatepw(user.getUsername(),password1);
               String msg="<h5 style='color:green'>更改成功</h5>";

//               String msg="更改成功";
               request.setAttribute("msg",msg);
               return "user/info";

           }
           else
           {
//               System.out.println("sdfasdfsadf");
               String msg="<h5 style='color:red'>更改失败</h5>";
//               String msg="更改失败";
               request.setAttribute("msg",msg);
               return "user/info";

           }

//           return "user/info";

       }
       catch (Exception e)
       {

           String msg="<h5 style='color:red'>输入不正确</h5>";
           request.setAttribute("msg",msg);
           return "user/info";

       }
//        if(user.getPassword().equals(oldPw))
//        {
////            user.setPassword(password1);
//            password1=user.getPassword();
//            userservice.Updatepw(user.getUsername(),password1);
//        }
//        else
//        {
//        }
//
//        return "user/info";
    }









    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));


    }

        @RequestMapping("register")
    public String register()
{

    return "user/register";

}

    @RequestMapping("index")

    public String index(Model model)
    {
        List<Film> films=userservice.findfilm();
//        System.out.println(films);
        model.addAttribute("films",films);



        return "user/index";

    }



    @RequestMapping("login")
    public String login()
    {

        return "user/login";

    }

    @RequestMapping("logout")
    public String logout(HttpServletRequest request)
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



                ss2= (String) ss.subSequence(i+1,ss.length()-1);

            }





        }
        ss1=ss1+"_"+ss2;






        request.getSession().invalidate();

        return "redirect:/user/index.do";

    } @RequestMapping("loginError")
    public String loginError(HttpServletRequest request)
    {


        return "user/loginError";

    }

    @RequestMapping("userLogins")
    public String userLogins(String username, String password, HttpSession session, HttpServletRequest request)
    {
        if(username != null && password != null){
            User user = userservice.findLogin(username);
            if(user != null){
                if(user.getUsername().equals(username)&&user.getPassword().equals(password)){
                    session.setAttribute("userInfo",user.getUsername());
                    session.getAttribute(password);
                    session.setAttribute("userInfo",user);
			  		/*System.out.print("BBBBBBBBBBBB" + session);
			  		System.out.print("AAAAAAAAAA" + session.getAttribute(password));
			  		System.out.print("CCCCCCCCCCCCCC" + session.getAttribute("userInfo"));*/
                    if (user.getState()!=1)
                    {
                        String msg="<h5 style='color:red'>用户未激活</h5>";

//                        String msg="用户未激活";

                        request.setAttribute("msg",msg);

                        return "user/login";

                    }



                    if(session.getAttribute("userInfo") != null){
                        request.getSession().setAttribute("loginUser",user);

                        System.out.println("ok");
                        return "redirect:/user/index";
                    }else{

//                        return "redirect:/run/findAlltask?num=1";
                        return "redirect:/run/pw";

                    }

                }else{

                    String msg="<h5 style='color:red'>用户名或密码错误</h5>";

                    request.setAttribute("msg",msg);
//                    return "redirect:/run/pw";
                    return "redirect:/run/findAlltask?num=1";
//                    return "redirect:/user/index";

//                    return "用户名密码错误";
                }
            }else{
                return null;
            }
        }else {
            String msg="用户没有注册";
            request.setAttribute("msg",msg);
            return "redirect:/user/index";
        }

    }





    @RequestMapping("userLogin")
    public String userLogin(String username, String password, HttpSession session, HttpServletRequest request) throws UnsupportedEncodingException {
//        request.setCharacterEncoding("utf-8");
//        response.setContentType("text/html;charset=utf-8");
//        验证码


        String rightCode = (String) request.getSession().getAttribute("rightCode");
        String tryCode = request.getParameter("tryCode");
//        System.out.println("rightCode:"+rightCode+" ———— tryCode:"+tryCode);
        if (!rightCode.equals(tryCode)) {
//            return "redirect:loginError";
//            String msg="验证码有误";
            String msg="<h5 style='color:red'>验证码有误</h5>";


            request.setAttribute("msg",msg);
            return "user/login";
        }


//        验证码
        if(username != null && password != null){
            User user = userservice.findLogin(username);
            if(user != null){
                if(user.getUsername().equals(username)&&user.getPassword().equals(password)){
                    session.setAttribute("userInfo",user.getUsername());
                    session.getAttribute(password);
                    session.setAttribute("userInfo",user);
			  		/*System.out.print("BBBBBBBBBBBB" + session);
			  		System.out.print("AAAAAAAAAA" + session.getAttribute(password));
			  		System.out.print("CCCCCCCCCCCCCC" + session.getAttribute("userInfo"));*/
			  		if (user.getState()!=1)
                    {
//                        String msg="用户未激活,请登录邮箱激活";
                        String msg="<h5 style='color:red'>用户未激活,请登录邮箱激活</h5>";


                        request.setAttribute("msg",msg);

                        return "user/login";

                    }



                    if(session.getAttribute("userInfo") != null){
			  		    request.getSession().setAttribute("loginUser",user);

//                        System.out.println("ok");
                        return "redirect:/user/index.do";
                    }else{

                        return "user/login";
                    }

                }else{
                    String msg="<h5 style='color:red'>用户名或密码错误</h5>";
//                    String msg="用户名密码错误";
                    request.setAttribute("msg",msg);
                    return "user/login";

//                    return "用户名密码错误";
                }
            }else{

                String msg="<h5 style='color:red'>用户名或密码错误</h5>";
//                    String msg="用户名密码错误";
                request.setAttribute("msg",msg);
                return "user/login";

            }
        }else {
            String msg="<h5 style='color:red'>用户名或密码错误</h5>";
//                    String msg="用户名密码错误";
            request.setAttribute("msg",msg);
            return "user/login";
        }











    }
//聊天
//    @RequestMapping(value="login", method=RequestMethod.POST)
//    public String userLogin( @RequestParam(value="username", required=true)String username,
//                             @RequestParam(value="pwd",required=true) String pwd, HttpSession session) {
//
//        String password = userMap.get(username);
//        if (pwd.equals(password)) {
//            User user = new User(username, pwd);
//            String sessionId = session.getId();
//            onlineUser.put(sessionId, user);
//            return "redirect:/v6/chat.html";
//        } else {
//            return "redirect:/v6/error.html";
//        }
//
//    }





    @RequestMapping("info")
    public String info()
    {

        return "user/info";

    }

    @RequestMapping("toregist")
public String regist(User user, HttpServletRequest request)
{

    userservice.userRegist(user);

    String msg="<h5 style='color:red'>请查看邮箱激活账号后再登录</h5>";
    request.setAttribute("msg",msg);


//   System.out.println(user);
    return "user/login";
}
    @RequestMapping("checkregist")
    public void checkregist(HttpServletRequest request, HttpServletResponse response) throws IOException {
           String username= (String) request.getParameter("username");
        String flag =  userservice.finduser(username);
                if(flag=="1")
                {
                    response.getWriter().println(1);  //存在用户名
                }
                else
                {
                    response.getWriter().println(0);  //存在用户名

                }


//    System.out.println("hah1");
//    System.out.println("hah12");
//        return "user/index";
    }





    @RequestMapping("active")
public String active(@RequestParam(value="code",required = true ,defaultValue = "123") String code, HttpServletRequest request)
{

    boolean flag=userservice.userActive(code);
    if(flag==true)
    {
        String msg="<h5 style='color:green'>邮箱激活成功</h5>";

//        String msg="邮箱激活成功";
        request.setAttribute("msg",msg);

        System.out.println("ok");
        return "user/login";
    }
    else
    {
        String msg="邮箱激活失败";
        request.setAttribute("msg",msg);

        System.out.println("不ok");
        return "user/info";
    }
//    return "user/list";

}




}
