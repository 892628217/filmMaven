package com.lee.film.controller;

import com.lee.film.mapper.FilmMapper;
import com.lee.film.model.Film;
import com.lee.film.service.IFilmservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * @author
 * @create 2019-05-03 23:11
 */
@Controller
@RequestMapping("film")
public class FilmController {
    @Autowired
    IFilmservice filmservice;
    @Autowired
    FilmMapper filmMapper;

    @RequestMapping("brief")
    public String briefInt(@RequestParam("id") String id, Model model)
    {
        Film film= filmMapper.findFilm(id);

        model.addAttribute("film",film);

        return "film/brief";
    }

    @RequestMapping("pay")
    public String briefInt(String price,String id, String counter1 ,String name,String seats, Model model, HttpServletRequest request)
    {

//        Film film= filmMapper.findFilm(id);


//        model.addAttribute("film",film);
        model.addAttribute("price",price);
        model.addAttribute("counter1",counter1);
        model.addAttribute("seats",seats);
        model.addAttribute("name",name);
        model.addAttribute("id",id);

        return "film/alipay";
    }
@RequestMapping("seat")
    public String seat(@RequestParam("id") String id, Model model)
    {
        Film film= filmMapper.findFilm(id);

        model.addAttribute("film",film);

        return "film/seat";
    }

 @RequestMapping("setseat")
@ResponseBody
    public Object setseat()
    {


        List<String>seats= new ArrayList<>();
        seats=filmMapper.findbeseated();

        return seats;





    }



@RequestMapping("allFilms")
    public String allFilms( Model model)
    {
//        Film film= filmMapper.findFilm(id);

//        model.addAttribute("film",film);

        return "film/allFilms";
    }


}
