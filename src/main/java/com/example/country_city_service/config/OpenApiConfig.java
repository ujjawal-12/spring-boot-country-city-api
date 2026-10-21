
package com.example.country_city_service.config;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class OpenApiConfig {

    @Bean
    public OpenAPI countryCityOpenAPI() {
        return new OpenAPI()
                .info(new Info()
                        .title("Country and City API")
                        .description(
                                "REST APIs for retrieving countries " +
                                        "and their cities with pagination."
                        )
                        .version("1.0.0"));
    }
}
