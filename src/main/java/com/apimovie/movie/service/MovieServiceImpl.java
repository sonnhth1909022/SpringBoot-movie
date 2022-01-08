package com.apimovie.movie.service;

import com.apimovie.movie.entity.Movie;
import com.apimovie.movie.repository.MovieRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class MovieServiceImpl implements MovieService{

    @Autowired
    private MovieRepo movieRepo;

    @Override
    public List<Movie> getHotMovies() {
        return movieRepo.getAllHotMovies();
    }

    @Override
    public List<Movie> getTrendingMovies() {
        return movieRepo.getAllTrendingMovies();
    }

    @Override
    public List<Movie> getSuggestedMovies() {
        return movieRepo.getAllSuggestedMovies();
    }

    @Override
    public List<Movie> getWatchMovies() {
        return movieRepo.getAllWatchMovies();
    }
}
