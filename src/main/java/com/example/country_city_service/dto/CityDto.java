package com.example.country_city_service.dto;

public record CityDto(
        Long id,
        String name,
        Long population,
        Long countryId
) {
}