🌍 Spring Boot Country & City API

📌 Overview

The Country & City API is a RESTful web service that provides structured access to country and city information.

Built with Spring Boot, this project demonstrates a clean, layered architecture, database integration, paginated data retrieval, and interactive API documentation.

Whether you're learning Spring Boot or exploring REST API development, this project provides a practical example of building and testing backend services.

✨ Features
1. Country Lookup — Retrieve the available countries.
2. City Lookup — Fetch cities associated with a specific country.
3. Pagination Support — Retrieve city records page by page.
4. City Details — Get detailed information about an individual city.
5. Interactive API Documentation — Explore and test endpoints using Swagger UI.
6. In-Memory Database — Run the application with H2 without installing a separate database server.
7. Layered Architecture — Separate controllers, services, repositories, and DTOs.
8. Sample Data — Explore the API using preloaded example records, when automatic seeding is enabled.

🛠️ Technology Stack

Technology	Purpose

Java 21	        Core programming language
Spring Boot	REST API development
Maven	        Dependency management and builds
Spring Data JPA	Database access and persistence
Lombok	        Reduces boilerplate code
OpenAPI / Swagger UI	API documentation and testing
H2 Database	Lightweight in-memory database

Getting Started

Follow these steps to run the project locally.

Prerequisites

Make sure you have installed:

Java JDK 21
Git
Maven, or use the Maven Wrapper included in the repository
A browser or Postman to test API requests
1. Clone the repository
git clone <your-github-repository-url>
cd <your-project-folder>


Replace the placeholders with your actual repository URL and directory name.

2. Build the project
mvn clean package

3. Start the application
mvn spring-boot:run


Once the application starts successfully, the API should be accessible at:

Base URL: http://localhost:8080

Note: Ensure your database configuration and sample-data initialization are set up correctly before testing the endpoints.

🔗 API Endpoints

The API exposes the following endpoints.

Method	Endpoint	Description
GET	/countries	Retrieve all available countries
GET	/countries/{countryId}/cities?page=0&size=10	Retrieve a country's cities with pagination
GET	/cities/{cityId}	Retrieve a city by its ID

🧪 Try the API

<details>
<summary>🌍 1. Get all countries</summary>

Request

GET http://localhost:8080/countries


Purpose: Retrieves the available countries stored in the database.

</details>

<details>
<summary>🏙️ 2. Get cities by country</summary>

Request

GET http://localhost:8080/countries/2/cities?page=0&size=9


Purpose: Retrieves a page of cities associated with country ID 2, requesting up to nine records.

Query parameters

Parameter	Description	Default
page	Zero-based page index	0
size	Maximum number of records per page	10

</details>

<details>
<summary>📍 3. Get city details</summary>

Request

GET http://localhost:8080/cities/35


Purpose: Retrieves information about city ID 35, including its associated country if provided by the response model.

</details>

📄 Pagination

The city listing endpoint uses Spring Data's Pageable and Page abstractions to retrieve records in manageable groups.

GET /countries/2/cities?page=0&size=10

Parameter	Description
page	Zero-based page number
size	Number of records requested
Maximum size	100, if enforced by the application

Depending on the implementation, the paginated response may include:

The cities returned on the current page
Total matching records
Current page index
Requested page size
Total number of pages

🏗️ Application Architecture

The application follows a layered architecture that separates request handling, business logic, and database operations.

flowchart TD
    A[Client / Postman / Browser] --> B[REST Controllers]
    B --> C[Service Layer]
    C --> D[Repository Layer]
    D --> E[(H2 Database)]
    C --> F[DTOs / Response Models]
    F --> B

Layer Responsibilities
Layer	Responsibility
Controllers	Handle HTTP requests and API responses
Services	Implement business logic
Repositories	Access database records through Spring Data JPA
DTOs	Define API response structures
Exception Handling	Centralize error responses, if configured
Pagination	Manage paginated city retrieval

This separation improves maintainability, testability, and organization.

📚 Interactive API Documentation

Explore and test the endpoints directly in your browser after starting the application.


Swagger UI: http://localhost:8080/swagger-ui/index.html
OpenAPI JSON: http://localhost:8080/v3/api-docs

Swagger UI lets you review endpoint parameters, inspect documented request and response models, and execute API requests interactively.

These links point to your local application, so they work when the application is running on your machine.

💾 Database Configuration

This project uses the H2 in-memory relational database for development and demonstration.

Setting	Details
Database	H2
Database type	In-memory relational
Main purpose	Development, testing, and API demonstrations
Data persistence	Typically temporary unless configured otherwise
Access the H2 Console

When the console is enabled, open:

http://localhost:8080/h2-console

Use the JDBC URL, username, and password configured in application.properties.

The H2 console allows you to inspect database tables, run SQL queries, and verify country and city records.

🌱 Sample Data

The project includes a data seeder intended to populate the database with sample country and city records when automatic initialization is configured.

The sample dataset is described as containing 10 countries and their major cities, allowing you to try the API without manually creating every record.

Sample data is intended for demonstration and testing, not as a comprehensive geographical dataset.

⚠️ Error Handling

The API may return the following status codes depending on the application's validation and exception-handling implementation.

Status Code	Meaning	Example
200 OK	Request successful	Countries retrieved
400 Bad Request	Invalid request	Unsupported pagination values
404 Not Found	Resource not found	City or country does not exist

The actual status codes and error response structures depend on the implemented application logic.

🧭 API Specification

The API uses OpenAPI to describe available endpoints, request parameters, response schemas, and documented HTTP status codes.

Swagger UI
OpenAPI specification



