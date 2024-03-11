@TestAPI
Feature: This feature has CRUD operations for API

  # This feature file tests the CRUD operations for the restful-booker API.

  @TestAPI_TS01
  Scenario: TestAPI_TS01
  Description: This scenario verifies the creation of a new booking
    Given I want to build the request with body
    When I submit the "POST" request
    Then The status code should be 200
    And The response body should be as expected

  Scenario: TestAPI_TS02
  Description: This scenario verifies getting a response
    Given I want to build the request
    When I submit the "GET" request
    Then The status code should be 200
    And The response body should be as expected

  Scenario: TestAPI_TS03
  Description: This scenario verifies partial updation of a booking
    Given I want to build the request with body
    When I submit the "PUT" request
    Then The status code should be 200
    And The response body should be as expected


  Scenario: TestAPI_TS04
  Description: This scenario verifies full updation of a booking
    Given I want to build the request with body
    When I submit the "PATCH" request
    Then The status code should be 200
    And The response body should be as expected


  Scenario: TestAPI_TS05
  Description: This scenario verifies deletion of a booking
    Given I want to build the request
    When I submit the "DELETE" request
    Then The status code should be 201
#
