@FeatureFile1
Feature: This is feature file

  Background: It will run first
    * karate.log("Background first")


  @ScenarioTag
  Scenario: Hitting endpoint
    * karate.log("Hitting endpoint 1")

  @ScenarioOutlineTags
  Scenario Outline: It will hit endpoint with given data in examples
    * print karate.tags
    * karate.log("Hitting endpoint with data",'<data>')

    @ExampleTag1
    Examples:
      | data |
      | A    |

    @ExampleTag2
    Examples:
      | data |
      | A    |
      | B    |

    @ExampleTag3
    Examples:
      | data |
      | 3    |
      | 4    |


  @AddNewPetToStore
  Scenario: Add a new pet to the store

    Given url 'https://petstore.swagger.io/v2/pet'
    And header Content-Type = 'application/json'
    And header Accept = '*/*'
    And request {"name": "doggie","photoUrls": ["velit","veniam"],"id": -47146784,"category": {"id": 90143396,"name": "non quis veniam"},"tags": [{"id": -75867529,"name": "dolore volup"},{"id": -26315235,"name": "ad velit aliquip non ea"}],"status": "available"}
    When method POST
    Then status 200
    * def responseBody = response
    * def id = response.id
    * karate.log("New id of pet :",response.id)


  @GetUserNameOfPet
  Scenario: Get username of pet

    Given url 'https://petstore.swagger.io/v2/pet/9223372036854738304'
    And header Accept = 'application/json'
    When method Get
    Then status 200
    * def responseBody = response
    * karate.log("New id of pet :",response)

