package com.example.country_city_service.service;


import com.example.country_city_service.entity.City;
import com.example.country_city_service.dto.CityDetailsDto;
import com.example.country_city_service.dto.CityDto;
import com.example.country_city_service.dto.PagedResponse;
import com.example.country_city_service.exception.ResourceNotFoundException;
import com.example.country_city_service.repository.CityRepository;
import com.example.country_city_service.repository.CountryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CityService {

    private final CityRepository cityRepository;
    private final CountryRepository countryRepository;

    public PagedResponse<CityDto> getCitiesByCountry(
            Long countryId, Pageable pageable) {


        if (!countryRepository.existsById(countryId)) {
            throw new ResourceNotFoundException(
                    "Country not found with id: " + countryId);
        }


        Page<City> cityPage =
                cityRepository.findByCountryId(countryId, pageable);


        return new PagedResponse<>(
                cityPage.getContent().stream()
                        .map(city -> new CityDto(
                                city.getId(),
                                city.getName(),
                                city.getPopulation(),
                                city.getCountry().getId()))
                        .toList(),
                cityPage.getTotalElements(),
                cityPage.getNumber(),
                cityPage.getSize(),
                cityPage.getTotalPages()
        );
    }

    public CityDetailsDto getCityDetails(Long cityId) {


        City city = cityRepository.findWithCountryById(cityId)
                .orElseThrow(() ->
                        new ResourceNotFoundException(
                                "City not found with id: " + cityId));


        return new CityDetailsDto(
                city.getId(),
                city.getName(),
                city.getPopulation(),
                city.getLatitude(),
                city.getLongitude(),
                city.getCountry().getId(),
                city.getCountry().getName()
        );
    }
}

