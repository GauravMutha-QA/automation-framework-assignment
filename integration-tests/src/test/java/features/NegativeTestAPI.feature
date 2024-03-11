@NegativeTestAPI
Feature: This feature has CRUD operations for API

  # This feature file negatively tests the CRUD operations for the restful-booker API.

  Scenario: NegativeTestAPI_TS01
  Description: This scenario verifies the creation of a new booking with an invalid payload
    Given I want to build the request with body
    When I submit the "POST" request
    Then The status code should be 500

  Scenario: NegativeTestAPI_TS02
  Description: This scenario verifies getting a response when invalid booking id is requested
    Given I want to build the request
    When I submit the "GET" request
    Then The status code should be 404

  Scenario: NegativeTestAPI_TS03
  Description: This scenario verifies partial updation of a booking when wrong credentials are provided
    Given I want to build the request with body
    When I submit the "PATCH" request
    Then The status code should be 403

  Scenario: NegativeTestAPI_TS04
  Description: This scenario verifies full updation of a booking without authorization
    Given I want to build the request with body
    When I submit the "PUT" request
    Then The status code should be 403


  Scenario: NegativeTestAPI_TS05
  Description: This scenario verifies deletion of a booking which does not exist
    Given I want to build the request
    When I submit the "DELETE" request
    Then The status code should be 405

