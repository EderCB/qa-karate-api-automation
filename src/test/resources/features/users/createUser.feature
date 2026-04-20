@smoke @regression
Feature: Create user

Background:
    * url baseUrl
    * def schema = call read('classpath:helpers/schema/userSchema.js')
Scenario: Should create user successfully
    * def user = call read('classpath:helpers/dataGenerator.js')

    Given path '/usuarios'
    And request user
    When method POST
    Then status 201

    * match response._id != null
    * match response == schema.createdUserResponse