Feature: Common feature file for Store

  Background:
    Given url baseUrl
    * def baseUrl = "https://petstore.swagger.io/v2/"
    * def path = "store/order"

    @orderItem
    Scenario: Create a order from store
      * def RequestBody = RequestBody

      And path path
      And request RequestBody
      When method post
      Then status 200
      * def response = response
      * karate.log("Order Item",response)

    @getOrder
    Scenario: get order from store
      * def orderID = orderID

      And path path + "/" + orderID
      When method get
      Then status 200
      * def response = response
      * karate.log("get response",response)

  @getOrder400
  Scenario: get order from store
    * def orderID = orderID

    And path path + "/" + orderID
    When method get
    Then status 400
    * def response = response
    * karate.log("get response",response)


