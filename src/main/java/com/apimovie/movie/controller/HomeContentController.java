package com.apimovie.movie.controller;

import com.apimovie.movie.dto.HomeContentDto;
import com.apimovie.movie.dto.mapper.CastMapper;
import com.apimovie.movie.dto.mapper.CategoryMapper;
import com.apimovie.movie.dto.mapper.DirectorMapper;
import com.apimovie.movie.dto.mapper.MovieMapper;
import com.apimovie.movie.entity.*;
import com.apimovie.movie.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/home")
public class HomeContentController {

    @Autowired
    private MovieService movieService;

    @Autowired
    private MovieMapper movieMapper;

    @GetMapping
    public BaseResponse getAllLists(){
        BaseResponse res = new BaseResponse();
        HomeContentDto homeContentDto = new HomeContentDto();

        homeContentDto.setListTrending(movieMapper.INSTANCE.
                lsMovieModelToDto(movieService.getTrendingMovies()));
        homeContentDto.setListHot(movieMapper.INSTANCE.
                lsMovieModelToDto(movieService.getHotMovies()));
        homeContentDto.setListSuggest(movieMapper.INSTANCE.
                lsMovieModelToDto(movieService.getSuggestedMovies()));
        homeContentDto.setListWatch(movieMapper.
                lsMovieModelToDto(movieService.getWatchMovies()));

        res.data = homeContentDto;
        return res;
    }
}
