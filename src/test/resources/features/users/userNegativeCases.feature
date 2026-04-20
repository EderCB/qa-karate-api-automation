@unhappy
Feature: User negative cases

  Background:
    * url baseUrl
    * def schema = call read('classpath:helpers/schema/userSchema.js')

  Scenario: Should not create user without required fields
    Given path '/usuarios'
    And request {}
    When method post
    Then status 400
    And match response == schema.createUserMissingFieldsResponse
  
  Scenario: Should not create user with existing email

    * def firstUser = call read('classpath:features/users/createUser.feature')
    * def userData = firstUser.user

    Given path '/usuarios'
    And request userData
    When method post
    Then status 400
    And match response == schema.duplicateEmailResponse

  Scenario: Should not delete non-existent user
    Given path '/usuarios', '000000000000000000000000'
    When method delete
    Then status 200
    And match response == schema.deletedUserNotFoundResponse

  Scenario: Should not get user with invalid ID
    * def invalidUserId = 'invaBAlidid12323'

    Given path '/usuarios', invalidUserId
    When method GET
    Then status 400
    And match response == schema.userNotFoundResponse