# spring-boot-country-city-api

The Country and City API is a RESTful web service built with Spring Boot that provides endpoints for retrieving country and city information. It allows clients to fetch a list of countries, retrieve cities associated with a specific country using pagination, and access detailed information about an individual city.


The API follows a layered architecture to separate request handling, business logic, and database operations.



2\. Technologies and Tools



The project uses the following technologies:



Java 21 – Programming language.

Spring Boot – Framework for building the REST API.

Maven – Dependency management and project build automation.

Spring Data JPA – Database access and persistence.

Lombok – Reduces boilerplate code.

OpenAPI / Swagger UI – API documentation and interactive testing.

H2 Database – Lightweight, in-memory relational database.



3\. Prerequisites



Before running the application, ensure the following tools are installed:



Java Development Kit (JDK) 21.

Maven or the Maven Wrapper provided with the project.

Git for cloning the repository.

Postman or a web browser for testing the API endpoints.



4\. Running the Application



Follow these steps to set up and run the project locally.



Step 1: Clone the Repository

git clone <your-github-repository-url>

cd <your-project-folder>





Replace the placeholders with your repository URL and project directory name.



Step 2: Build the Project



Run the following command to compile the source code and package the application:



mvn clean package



Step 3: Start the Application



Launch the Spring Boot application using:



mvn spring-boot:run





Ensure that the database configuration is correct and that the sample data initialization process is configured before starting the application.



Once the application starts successfully, the API will be available at http://localhost:8080.



5\. API Documentation



The project provides interactive API documentation through Swagger UI and an OpenAPI specification.



After starting the application, access the following URLs:



Swagger UI: http://localhost:8080/swagger-ui/index.html

OpenAPI JSON: http://localhost:8080/v3/api-docs



Swagger UI allows you to explore available endpoints, review request parameters and response models, and execute API requests directly from your browser.



6\. Available API Endpoints



The API exposes the following endpoints:



HTTP Method	Endpoint	Description

GET	/countries	Retrieves the list of available countries.

GET	/countries/{countryId}/cities?page=0\&size=10	Retrieves cities belonging to a specific country with pagination.

GET	/cities/{cityId}	Retrieves detailed information about a city by its ID.



7\. Example API Requests

Retrieve All Countries

GET http://localhost:8080/countries





Returns the available countries stored in the database.



Retrieve Cities for a Specific Country

GET http://localhost:8080/countries/2/cities?page=0\&size=9





Returns a paginated list of cities associated with country ID 2, with up to nine records per page.



Retrieve City Details

GET http://localhost:8080/cities/35





Returns the details of the city identified by ID 35, including its associated country if supported by the response model.



8\. Pagination



The city listing endpoint supports pagination to retrieve records in manageable groups instead of returning all cities in a single response.



The supported query parameters are:



page: Specifies the zero-based page index. The default value is 0.

size: Defines the maximum number of records returned per page. The default value is 10.

Maximum page size: 100, if this limit is enforced by the application.



The paginated response may include the following information, depending on the response implementation:



The list of cities on the current page.

The total number of matching records.

The current page index.

The requested page size.

The total number of available pages.



Pagination is implemented using Spring Data's Pageable and Page abstractions.



9\. Error Handling



The API should provide appropriate HTTP status codes when requests cannot be processed.



404 Not Found: Returned when the requested country or city does not exist, provided this behavior is implemented by the application.

400 Bad Request: Used for invalid request parameters, such as unsupported pagination values, when handled by the application's validation and exception-handling logic.



A consistent error response structure helps clients understand and handle failed requests.



The actual status codes and response formats depend on the application's implemented exception-handling and validation rules.



10\. Application Architecture and Design Decisions



The application follows a layered architecture to improve maintainability, separation of concerns, and testability.



Controllers: Handle incoming HTTP requests and return API responses.

Services: Contain business logic and coordinate application operations.

Repositories: Manage database interactions through Spring Data JPA.

DTOs (Data Transfer Objects): Define the data exposed through API responses and help separate external API contracts from database entities.

Global Exception Handling: Provides a centralized approach to handling application errors, if configured.

Pagination: Uses Spring Data's Pageable and Page functionality to support paginated city retrieval.



These design choices help keep the code organized and make individual application layers easier to maintain and test.



Note: Verify the validation rules, exception-handling behavior, and response structure against the actual implementation.



11\. API Specification



The API is documented using the OpenAPI specification, which describes the available endpoints, request parameters, response schemas, and applicable HTTP status codes.



The generated specification can be accessed at:



http://localhost:8080/v3/api-docs





The interactive Swagger UI is available at:



http://localhost:8080/swagger-ui/index.html





If a separate openapi.yaml file is included in the repository, its location can also be documented here.



12\. Database Configuration



The application uses an in-memory H2 database to store country and city records.



Database Details

Database engine: H2.

Database type: In-memory relational database.

Data storage: Records are maintained in memory while the database instance is active. Data is typically lost when the application stops or restarts unless persistence is configured separately.

Primary purpose: Provides a lightweight database environment for local development, testing, and API demonstrations without requiring an external database server.

Accessing the H2 Console



The H2 database console is available at:



http://localhost:8080/h2-console



Use the JDBC URL, username, and password defined in the application's application.properties configuration file to establish a connection.



The console allows developers to inspect database tables, execute SQL queries, and verify the country and city records.



13\. Sample Data Initialization



The project includes a data seeder that populates the H2 database with sample country and city records when the application starts, assuming the seeder is configured to run automatically.



The sample dataset contains 10 countries and their major cities, providing ready-to-use data for exploring and testing the API endpoints.



Note: The sample dataset is intended for demonstration and testing only.

