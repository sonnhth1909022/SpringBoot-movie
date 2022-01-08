package com.apimovie.movie.dto;

import lombok.*;

import java.util.Date;
import java.util.List;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class MovieDto {
    private int id;
    private String name;
    private Date created_at;
    private Date updated_at;
    private String thumbnail;
    private int categoryid;
    private int directorid;
    private String description;
    private int duration;
    private int view;
    private String url;
    private CategoryDto category;
    private DirectorDto director;
    private List<CastDto> casts;
}
