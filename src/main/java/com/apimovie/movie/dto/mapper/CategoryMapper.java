package com.apimovie.movie.dto.mapper;

import com.apimovie.movie.dto.CategoryDto;
import com.apimovie.movie.entity.Category;
import org.mapstruct.Mapper;
import org.mapstruct.NullValueCheckStrategy;
import org.mapstruct.factory.Mappers;

@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface CategoryMapper {
    CategoryMapper INSTANCE = Mappers.getMapper(CategoryMapper.class);

    CategoryDto categoryModelToDto(Category category);
    Category categoryDtoToModel(CategoryDto categoryDto);
}
