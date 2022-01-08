package com.apimovie.movie.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class HomeContentDto {
   private List<MovieDto> listTrending;
   private List<MovieDto> listHot;
   private List<MovieDto> listSuggest;
   private List<MovieDto> listWatch;
}
