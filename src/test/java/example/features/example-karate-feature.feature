@tag
Feature: Gateway search defaulter active exemption found

  Background:
    * url baseUrl

  Scenario: Example POST

    * def postJson =
    """
    {
        "post": "example"
    }
    """

    * def responseBody =
    """
    {
        "example": "response"
    }
    """

    Given path '/post'
    And request postJson
    When method post
    Then status 200
    And match response == responseBody

  Scenario: Example GET

    * def responseBody =
    """
    {
        "example": "response"
    }
    """

    Given path '/get'
    When method get
    Then status 200
    And match response == responseBody
