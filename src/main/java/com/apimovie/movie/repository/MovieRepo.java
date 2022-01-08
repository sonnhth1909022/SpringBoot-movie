package com.apimovie.movie.repository;

import com.apimovie.movie.entity.Movie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface MovieRepo extends JpaRepository<Movie, Integer> {
    @Query("select m from Movie m where m.view > 100")
    List<Movie> getAllHotMovies();

    @Query("select m from Movie m where m.view > 1000")
    List<Movie> getAllTrendingMovies();

    @Query("select m from Movie m where m.categoryid = 1")
    List<Movie> getAllSuggestedMovies();

    @Query("select m from Movie m where m.categoryid = 2")
    List<Movie> getAllWatchMovies();
}
