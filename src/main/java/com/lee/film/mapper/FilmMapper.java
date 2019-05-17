package com.lee.film.mapper;

import com.lee.film.model.Film;

import java.util.List;

public interface FilmMapper {
    List<Film> getFilms();


    int findTotalRecords();

    List<Film> findAllFilmsWithPage(int startIndex, int pageSize);

    void savefilm(Film film);


    Film findFilm(String id);


    List<String> findbeseated();
}