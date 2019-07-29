#@employee

Feature: New Employee
As a system user
I want to perform API requests
In order to manipulate startup registration information

Scenario: Create an Employee
    Given API Address to Maintain Employee Registration
    When making a request to register a employee
    Then the API will return the Startup registration data by response code 201