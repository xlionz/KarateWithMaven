Feature: Carry out a process that allows me creates a user
  Me as a user
  I wan to create a user
  To verify the correct functioning

  Background: info
    * url baseUrl
    * def requestInfo = read('classpath:com/co/api/reqrestest/posts/requests/requestCreateUser.json')

  Scenario: Create a user
    * request requestInfo
    Given path 'api', 'users'
    When method POST
    Then print response
    Then status 201
    And  match $.name == requestInfo.name
