package com.example.country_city_service.repository;

import com.example.country_city_service.entity.City;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CityRepository extends JpaRepository<City, Long> {

    Page<City> findByCountryId(Long countryId, Pageable pageable);

    @EntityGraph(attributePaths = "country")
    Optional<City> findWithCountryById(Long id);
}