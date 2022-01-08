package com.apimovie.movie.dto.mapper;

import com.apimovie.movie.dto.DirectorDto;
import com.apimovie.movie.entity.Director;
import org.mapstruct.Mapper;
import org.mapstruct.NullValueCheckStrategy;
import org.mapstruct.factory.Mappers;

@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface DirectorMapper {
    DirectorMapper INSTANCE = Mappers.getMapper(DirectorMapper.class);

    DirectorDto directorModelToDto(Director director);
    Director directorDtoToModel(DirectorDto directorDto);
}
