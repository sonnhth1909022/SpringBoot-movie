package com.apimovie.movie.entity;

import lombok.*;

import javax.persistence.*;
import java.util.Date;
import java.util.List;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "movie")
public class Movie {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String name;
    private String thumbnail;
    private String description;
    private Date created_at;
    private Date updated_at;
    private int duration;
    private int view;
    private String url;
    private int categoryid;
    private int directorid;

    @ManyToOne
    @JoinColumn(name = "categoryid", insertable = false, updatable = false)
    private Category category;

    @ManyToOne
    @JoinColumn(name = "directorid", insertable = false, updatable = false)
    private Director director;

    @ManyToMany
    @JoinTable(
            name = "movie_cast",
            joinColumns = @JoinColumn(name = "movieid"),
            inverseJoinColumns = @JoinColumn(name = "castid"))
    private Set<Cast> casts;
}
