package com.example.country_city_service.dto;

public record CityDetailsDto(
        Long id,
        String name,
        Long population,
        Double latitude,
        Double longitude,
        Long countryId,
        String countryName
) {
}
