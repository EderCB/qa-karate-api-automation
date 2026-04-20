Feature: Delete a user
Background:
    * url baseUrl
    * def schema = call read('classpath:helpers/schema/userSchema.js')
Scenario: Should delete a user successfully
    * def createdUser = call read('classpath:features/users/createUser.feature')
    * def userId = createdUser.response._id

    Given path '/usuarios', userId
    When method DELETE
    Then status 200
    And match response == schema.deletedUserResponse

    Given path 'usuarios', userId
    When method GET
    Then status 400
    And match response == schema.userNotFoundResponse