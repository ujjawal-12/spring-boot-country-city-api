package com.example.country_city_service.controller;

import com.example.country_city_service.dto.CountryDto;
import com.example.country_city_service.service.CountryService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/countries")
@RequiredArgsConstructor
public class CountryController {

    private final CountryService countryService;

    @GetMapping
    public List<CountryDto> getAllCountries() {
        return countryService.getAllCountries();
    }
}

