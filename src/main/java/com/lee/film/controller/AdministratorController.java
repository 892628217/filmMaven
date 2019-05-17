package com.lee.film.controller;


import com.lee.film.model.Category;
import com.lee.film.model.Film;
import com.lee.film.model.PageModel;
import com.lee.film.model.User;
import com.lee.film.service.ICategoryservice;
import com.lee.film.service.IFilmservice;
import com.lee.film.service.IUserservice;
import com.lee.film.utils.UUIDUtils;
import com.lee.film.utils.UploadUtils;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("admin")
public class AdministratorController {


    @Autowired
    IUserservice userservice;


    @Autowired
    IFilmservice iFilmservice;

    @Autowired
    ICategoryservice iCategoryservice;


    @RequestMapping("login")

    public String admin()
    {
        return "admin/index";

    }

    @RequestMapping("top")

    public String top()
    {
        return "admin/top";

    }
    @RequestMapping("left")

    public String left()
    {
        return "admin/left";

    }
    @RequestMapping("bottom")

    public String bottom()
    {
        return "admin/bottom";

    }
    @RequestMapping("welcome")

    public String welcome()
    {
        return "admin/welcome";

    }

    @RequestMapping("addproductUI")

    public String addproductUI(Model model) throws Exception {
       List<Category> list=iCategoryservice.getAllCats();
       model.addAttribute("allCats",list);



        return "admin/product/add";

    }
  @RequestMapping("addproduct")


    public String addproduct(Model model, HttpServletRequest req) throws Exception {

      //存储表单中数据
      Map<String, String> map=new HashMap<String, String>();
      //携带表单中的数据向servcie,dao
      Film film=new Film();
      try {
          //利用req.getInputStream();获取到请求体中全部数据,进行拆分和封装
          DiskFileItemFactory fac=new DiskFileItemFactory();
          ServletFileUpload upload=new ServletFileUpload(fac);
          List<FileItem> list=upload.parseRequest(req);
//          System.out.println(req.getInputStream());
          //4_遍历集合
          for (FileItem item : list) {
              if(item.isFormField()){
                  //5_如果当前的FileItem对象是普通项
                  //将普通项上name属性的值作为键,将获取到的内容作为值,放入MAP中
                  // {username<==>tom,password<==>1234}
                  map.put(item.getFieldName(), item.getString("utf-8"));
              }else{
                  //6_如果当前的FileItem对象是上传项

                  //获取到原始的文件名称
                  String oldFileName=item.getName();
                  //获取到要保存文件的名称   1222.doc  123421342143214.doc
                  String newFileName=UploadUtils.getUUIDName(oldFileName);

                  //通过FileItem获取到输入流对象,通过输入流可以获取到图片二进制数据
                  InputStream is=item.getInputStream();
                  //获取到当前项目下products/3下的真实路径
                  //D:\tomcat\tomcat71_sz07\webapps\store_v5\products\3
                  String realPath= req.getServletContext().getRealPath("/products/3/");
                  String dir=UploadUtils.getDir(newFileName); // /f/e/d/c/4/9/8/4
                  String path=realPath+dir; //D:\tomcat\tomcat71_sz07\webapps\store_v5\products\3/f/e/d/c/4/9/8/4
                  //内存中声明一个目录
                  File newDir=new File(path);
                  if(!newDir.exists()){
                      newDir.mkdirs();
                  }
                  //在服务端创建一个空文件(后缀必须和上传到服务端的文件名后缀一致)
                  File finalFile=new File(newDir,newFileName);
                  if(!finalFile.exists()){
                      finalFile.createNewFile();
                  }
                  //建立和空文件对应的输出流
                  OutputStream os=new FileOutputStream(finalFile);
                  //将输入流中的数据刷到输出流中
                  IOUtils.copy(is, os);
                  //释放资源
                  IOUtils.closeQuietly(is);
                  IOUtils.closeQuietly(os);
                  //向map中存入一个键值对的数据 userhead<===> /image/11.bmp
                  // {username<==>tom,password<==>1234,userhead<===>image/11.bmp}
                  map.put("picture", "/products/3/"+dir+"/"+newFileName);
              }
          }


          //7_利用BeanUtils将MAP中的数据填充到Product对象上
          BeanUtils.populate(film, map);
          film.setId(UUIDUtils.getId());
//          film.setPdate(new Date());
          film.setFlag(0);

          //8_调用servcie_dao将user上携带的数据存入数据仓库,重定向到查询全部商品信息路径
//          ProductService ProductService=new ProductServiceImp();
          iFilmservice.savefilm(film);

//          resp.sendRedirect("/store_v5/AdminProductServlet?method=findAllProductsWithPage&num=1");


      } catch (Exception e) {
          e.printStackTrace();
      }

//      return null;
//      model.addAttribute("")




        return "redirect:findAllProduct.do?num=1";

    }


//    @RequestMapping("product")
//
//    public String product(Model model,@RequestParam  String cid ,@RequestParam int curNum)
//    {
//        System.out.println(cid);
//
//
//        //获取cid,num
//        //调用业务层功能:以分页形式查询当前类别下商品信息
//        //返回PageModel对象(1_当前页商品信息2_分页3_url)
////        ProductService ProductService=new ProductServiceImp();
////        PageModel pm=iFilmservice.findProductsByCidWithPage(cid,curNum);
////        //将PageModel对象放入request
////        model.addAttribute("page", pm);
//        //转发到/jsp/product_list.jsp
////        return  "/jsp/product_list.jsp";
//
//
//        return "admin/product/list";
//
//    }


    @RequestMapping("category")

    public String category(Model model) throws Exception {

        List<Category> list= iCategoryservice.getAllCats();


        model.addAttribute("allCats",list);



        return "admin/category/list";

    }


    @RequestMapping("addCategoryUI")

    public String addCategoryUI(Model model) throws Exception {








        return "admin/category/add";

    }


    @RequestMapping("findAllProduct")

    public String findAllProduct(Model model, @RequestParam int num) throws Exception {

        PageModel pageModel=iFilmservice.findAllproductsWithPage(num);
        model.addAttribute("page",pageModel);










        return "admin/product/list";

    }



    @RequestMapping("addCategory")

    public ModelAndView addCategory(Model model, String cname) throws Exception {
        String id=UUIDUtils.getId();
        Category category=new Category();
        category.setCid(id);
        category.setCname(cname);
        iCategoryservice.addCategory(category);

//        1.同一个controller里面方法的跳转
//
//@RequestMapping(value="/demo1")
//    public ModelAndView demo1(){
//        System.out.println(11);
//        return new ModelAndView("redirect:demo2");
//    }
//    注意写法/demo2与demo2的区别  如果是/demo2会在你输入的地址栏里面去掉你的controller名字，如果是demo2那么直接在地址栏将demo1变成demo2.
//---------------------


        return new ModelAndView("redirect:category.do");











//        return "admin/category/add";

    }





    @RequestMapping("tologin")

    public String tologin(String username , String password, HttpServletRequest request)
    {
//        System.out.println("asdfasdf");

        User user =null;
        user=userservice.findLogin(username);
        if (user!=null) {
            if (user.getUsername().equals(username) && user.getPassword().equals(password)) {
                request.getSession().setAttribute("loginUser",user);

                return "admin/home";


            }

            else {
//                System.out.println("asdfasdf");
                String msg="账户或密码错误";
                request.setAttribute("msg",msg);

                return "admin/index";

            }

        }
        else

        {
            System.out.println("123123");
            return "admin/index";

        }



    }








}
