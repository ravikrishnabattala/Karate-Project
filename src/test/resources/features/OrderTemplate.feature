Feature: feature file for templates

  Background:

  @createOrderAndGetOrder
  Scenario Outline: create order and get the order
    * karate.log("values :",__arg)
    Examples:
      | a |
      | 1 |
      | 2 |
      | 3 |
#      * def createOrderPayload = createOrderPayload
#      # create order
#      * def createOder = call read('file:src/test/resources/features/CommonAPI.feature@orderItem') {'RequestBody':#(createOrderPayload)}
#      * karate.log("create response",createOder.response)
#      * def OrderStoreID = createOder.response.id
#
#      # get order from store
#      * def getOrder = call read('file:src/test/resources/features/CommonAPI.feature@getOrder') {'orderID':#(OrderStoreID)}
#      * karate.log("get response",getOrder.response)
#
#      #validation
#      * match getOrder.response.id == OrderStoreID

  @updatingExistingPet
  Scenario: update an existing pet
# need to create pet
# i will get id
    * def json body updaet varibles
  * def call
  * def create =
    * def id = create.id

#  update the created pet
    updateed jsoon body
  * def updating =


# search the updated pet
  * def searching =
    * validate update values reflectd in pet response






  @uploadingimpage
  Scenario: update an existing pet
# need to create pet
# i will get id
    * def json body updaet varibles
    * def call
    * def create =
    * def id = create.id

#  update the imgage
    request body
    hit api scenario

# search the updated pet
    * def searching =
    * validate update values reflectd in pet response



