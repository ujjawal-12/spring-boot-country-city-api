package com.example.country_city_service.service;

import com.example.country_city_service.dto.CountryDto;
import com.example.country_city_service.entity.Country;
import com.example.country_city_service.repository.CountryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CountryService {

    private final CountryRepository countryRepository;

    public List<CountryDto> getAllCountries() {

        return countryRepository.findAll()
                .stream()
                .map(country -> new CountryDto(
                        country.getId(),
                        country.getName()
                ))
                .toList();
    }
}

