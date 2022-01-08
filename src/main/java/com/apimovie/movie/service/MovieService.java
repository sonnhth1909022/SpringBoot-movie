package com.apimovie.movie.service;

import com.apimovie.movie.entity.Movie;

import java.util.List;

public interface MovieService {
    List<Movie> getHotMovies();
    List<Movie> getTrendingMovies();
    List<Movie> getSuggestedMovies();
    List<Movie> getWatchMovies();
}
