package com.apimovie.movie.entity;

public class BaseResponse<T> {
    public int status =1;
    public String message ="Success";
    public T data;
}
