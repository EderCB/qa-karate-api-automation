Feature: Crear usuario

Background:
    * url baseUrl

Scenario: Crear usuario correctamente
    Given path '/usuarios'
    And request 
    """
    {
      "nome": "Test User",
      "email": "testuser1238@test.com",
      "password": "123456",
      "administrador": "false"
    }
    """
    When method POST
    Then status 201