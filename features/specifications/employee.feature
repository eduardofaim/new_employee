
@employee
Feature: New Employee
As a system user
I want to perform API requests
In order to manipulate startup registration information

Scenario: Create an Employee
    Given API address to maintain employee registration
    When making a request to register an employee
    Then the API will return the Startup registration data by response code 200

Scenario: Validate the Employee
    Given API address to maintain employee registration
    When make a request by passing the employee id
    Then the API will return the corresponding Employee data by response code 200

Scenario: Delete the Employee
    Given API address to maintain employee registration
    When make a request to delete an employee
    Then the API should return the delete message by response code 200
