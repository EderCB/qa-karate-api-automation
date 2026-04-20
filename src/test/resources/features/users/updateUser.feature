Feature: Update user

Background:
    * url baseUrl
    * def schema = call read('classpath:helpers/schema/userSchema.js')
Scenario: Should update a user successfully
    * def createdUser = call read('classpath:features/users/createUser.feature')
    * def userId = createdUser.response._id
    * def userData = createdUser.user

    Given path '/usuarios', userId
    * def updatedBodyUser =

    """
      {
        "nome": "#('Updated ' + userData.nome)",
        "email": "#('hola_' + userData.email)",
        "password": "#('1' + userData.password)",
        "administrador": "#(userData.administrador)"
      }
    """

    And request updatedBodyUser
    When method PUT
    Then status 200
    And match response == schema.updatedUserResponse

    Given path 'usuarios', userId
    When method GET
    Then status 200

    And match response.nome == updatedBodyUser.nome
    And match response.email == updatedBodyUser.email
    And match response.administrador == updatedBodyUser.administrador