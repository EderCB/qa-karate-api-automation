Feature: Get user by id

Background:
    * url baseUrl
Scenario: Should get user by id successfully
    * def createdUser = call read('classpath:features/users/createUser.feature')
    * def userId = createdUser.response._id
    * def userData = createdUser.user

    Given path '/usuarios', userId
    When method GET
    Then status 200

    And match response._id == userId
    And match response.nome == userData.nome
    And match response.email == userData.email
    And match response.administrador == userData.administrador