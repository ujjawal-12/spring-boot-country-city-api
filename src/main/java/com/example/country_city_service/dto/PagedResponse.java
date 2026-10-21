package com.example.country_city_service.dto;

import java.util.List;

public record PagedResponse<T>(
        List<T> content,
        long totalElements,
        int page,
        int size,
        int totalPages
) {
}
