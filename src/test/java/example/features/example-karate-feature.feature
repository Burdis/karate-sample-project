@tag
Feature: Example POST and GET requests in Karate

  Background:
    * url baseUrl

  Scenario: Example POST

    * def postJson =
    """
    {
        "userId": 1,
        "id": 101,
        "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
        "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
    }
    """

    * def responseBody =
    """
    {
        "userId": 1,
        "id": 101,
        "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
        "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
    }
    """

    Given path '/posts'
    And request postJson
    When method post
    Then status 201
    And match response == responseBody

  Scenario: Example GET

    * def responseBody =
    """
    {
        "userId": 1,
        "id": 1,
        "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
        "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
    }
    """

    Given path '/posts/1'
    When method get
    Then status 200
    And match response == responseBody
