Feature: Service Users
  As QA Automation
  I want to consult a user
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Verify user creation using the POST method

    * def requestUser = { "name": '#(name)',"job": '#(job)'}
    Given path 'api','users'
    And request requestUser
    When method post
    Then status 201

  Scenario: Receiving a 400 status when submitting an incomplete Json using the POST method
    * def requestUser = { "email": '#(email)'}
    Given path 'api','register'
    And request requestUser
    When method post
    Then status 400
    And assert response.email == "Pruebas@gmail.com"

  Scenario: Consult the information of a single user
    Given path 'api','users','2'
    When method get
    Then status 200

  Scenario: Consult the information of a single user not found
    Given path 'api','users','24'
    When method get
    Then status 404

  Scenario: Update the client's JOB
    * def requestUpdate = {"job": '#(job)'}
    Given path 'api','users','2'
    And request requestUpdate
    When method put
    Then status 200
    And assert response.job == "Engineer"

  Scenario: Update the client's Name
    * def requestUpdate = {"name": '#(name)'}
    Given path 'api','users','2'
    And request requestUpdate
    When method put
    Then status 200
    And assert response.name == "Santiago"

  Scenario: Delete an existing user
    Given path 'api','users','2'
    When method delete
    Then status 204

  Scenario: Delete an existing user
    Given path 'api','users','2'
    When method delete
    Then status 200