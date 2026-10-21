package com.example.country_city_service.controller;

import com.example.country_city_service.dto.CityDetailsDto;
import com.example.country_city_service.dto.CityDto;
import com.example.country_city_service.dto.PagedResponse;
import com.example.country_city_service.service.CityService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping
@RequiredArgsConstructor
public class CityController {

    private final CityService cityService;

    @GetMapping("/countries/{countryId}/cities")
    public PagedResponse<CityDto> getCitiesByCountry(
            @PathVariable Long countryId,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size) {

        if (page < 0 || size < 1 || size > 100) {
            throw new IllegalArgumentException(
                    "Page must be >= 0 and size must be between 1 and 100");
        }

        Pageable pageable = PageRequest.of(
                page,
                size,
                Sort.by("name").ascending()
        );

        return cityService.getCitiesByCountry(countryId, pageable);
    }

    @GetMapping("/cities/{cityId}")
    public CityDetailsDto getCityDetails(
            @PathVariable Long cityId) {

        return cityService.getCityDetails(cityId);
    }
}
