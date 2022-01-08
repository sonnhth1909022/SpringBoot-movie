package com.apimovie.movie.dto.mapper;

import com.apimovie.movie.dto.MovieDto;
import com.apimovie.movie.entity.Movie;
import org.mapstruct.Mapper;
import org.mapstruct.NullValueCheckStrategy;
import org.mapstruct.factory.Mappers;

import java.util.List;

@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface MovieMapper {
    MovieMapper INSTANCE = Mappers.getMapper(MovieMapper.class);

    MovieDto movieModelToDto(Movie movie);
    Movie movieDtoToModel(MovieDto movieDto);
    List<MovieDto> lsMovieModelToDto(List<Movie> movies);
    List<Movie> lsMovieDtoToModel(List<MovieDto> moviesDto);
}
