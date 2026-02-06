Feature: template file

  Background:
    * karate.log("template file")

  Scenario: Calling other feature

    * def apiCall = call read('file:src/test/resources/features/api.feature@AddNewPetToStore')
    * karate.log("Entire response: ",apiCall)
    * def responseBody = apiCall.responseBody
    * def newId = apiCall.id
    * karate.log("New Id:",newId)

