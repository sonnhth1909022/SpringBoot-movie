package com.apimovie.movie.dto.mapper;

import com.apimovie.movie.dto.CastDto;
import com.apimovie.movie.entity.Cast;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;
import org.mapstruct.NullValueCheckStrategy;
import org.mapstruct.factory.Mappers;

import java.util.List;

@Mapper(componentModel = "spring", nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface CastMapper {
    CastMapper INSTANCE = Mappers.getMapper(CastMapper.class);

    CastDto castModelToDto(Cast cast);
    Cast castDtoToModel(CastDto castDto);
    List<CastDto> lsCastModelToDto(List<Cast> casts);
}
