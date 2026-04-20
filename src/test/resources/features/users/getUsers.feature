@smoke @regression
Feature: List registered users

Background:
    * url baseUrl
    * def schema = call read('classpath:helpers/schema/userSchema.js')
Scenario: List users
    Given path '/usuarios'
    When method GET
    Then status 200
    And match response.usuarios == '#array'
    * match each response.usuarios == schema.userData