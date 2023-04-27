Feature: Carry out a process that gets a single user
  Me as a user 
  I wan to get my user info
  To verify the correct functioning
  
  Background: base url
    * url baseUrl
    * def responseInfo = read('classpath:com/co/api/reqrestest/gets/responses/responseUser.json')

  Scenario: Get a single user
    Given path 'api', 'users', '2'
    When method GET
    Then print response
    Then status 200
    Then  match $.data.id == 2

  Scenario: Get a single user and to verify complete response
    Given path 'api', 'users', '2'
    When method GET
    Then print response
    Then status 200
    Then match $ == responseInfo

  Scenario: Get a single user not found
    Given path 'api', 'users', '23'
    When method GET
    Then print response
    Then status 404
