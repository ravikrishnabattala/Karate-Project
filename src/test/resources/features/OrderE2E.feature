Feature: E2E files

  Background:

#    * def CreateRequestBody = read('file:src/test/resources/features/OrderItem.json')
  * configure afterScenario =
    """
        function(){
            karate.log("after scenario, it will help to delete all data created during testing helpful to mainttain db clean")
            karate.call('ffie',{'id' : id})
        }
    """

  Scenario Outline: create order with different status

    * karate.log("rows: ",__row)
#    * karate.log("before update",CreateRequestBody)
#    * print "before update"
#    * set CreateRequestBody.status = '<UpdatedStatus>'
#    * set CreateRequestBody.petId = <newPetID>
#    * karate.log("After updated",CreateRequestBody)
#    * def id = order
    * def commonOrderCreation = karate.call('file:src/test/resources/features/OrderTemplate.feature@createOrderAndGetOrder', __row)

    Examples:
    | UpdatedStatus | newPetID |
    |  approved     |  23      |
    |  delivered    |  21      |
    |  placed       |  27      |

 @createOrderWithDiffStatus
  Scenario:create order with delivered

    * karate.log("before update",CreateRequestBody)
    * set CreateRequestBody.status = "delivered"
    * karate.log("After updated",CreateRequestBody)
    * def commonOrderCreation = call read('file:src/test/resources/features/OrderTemplate.feature@createOrderAndGetOrder') __row


  Scenario: filtering json bodies

    * def readJsonObject = read('file:src/test/resources/features/OrderItem.json')
#    * def ids = karate.jsonPath(readJsonObject, '$.[*].shipDate')
#    * karate.log("ids :",ids)
#
#    * match readJsonObject[*].shipDate contains '2015-05-11'
#    * def shipDate = '2015-05-11T22:03:02.229+0000'
#    * match shipDate contains '2015-05-11'
#    * karate.remove(readJsonObject[0],'$.id')
#    * karate.log("readJsonObject :",readJsonObject)

    * def listOfItems = []
    * karate.appendTo(listOfItems,'a')
    * listOfItems.push('b')
#    * listOfItems.add('c')
    * karate.log("listOfItems ;",listOfItems)

    * def sampleClass = Java.type('Sample')
    * def sampleObject = new sampleClass();

    * eval sampleObject.sayHello()

    * eval sampleClass.sayHii()

    * def a = sampleObject.Hola(1)
    * karate.log("return data :",a)

    * def calculateSum =
    """
        function(a,b){
           var sum = 0;
           sum = a + b;
           karate.log("sum :",sum)
           return sum;
        }
    """

    * def sum = calculateSum(4,6)
    * karate.log("sum :",sum)

    * def product = read('CalculateSum.js')
    * def a = product(8,9)
    * karate.log("product :",a)

    * karate.forEach(listOfItems,function(i,index){ karate.log("item : ",index,i)})

    * karate.forEach(listOfItems,calculateSum)

    * karate.forEach(listOfItems,product)

    * karate.repeat(5,function(i){ karate.log("Number of iteration ;",i)})

    * def zzz = [2,3,4,5,6,7,8]

    * def ttt = zzz



    * def yyy = karate.map(zzz, function(i){ return i * 10 ; })
    * karate.log("numbers : ",zzz, yyy)

    * parseInt()
    * parseDouble()

    * json a = read('.json')
    * string b = a

    * def c = java.util.List()

    * def a = karate.call()

    * def k = 'z'
    * def a = { 'z' : 2 }

    * set a.z = 10
    * set a[k] = 10

    * def a = (k == 10) ? 8 : 15

    * if(a == 10) karate.abort()



  Scenario Outline: updaing an existing pet

     * def calling = @updatingExistingPet {}
    Examples:
      | a |



  Scenario Outline: uploadinng image to pet

    * def calling = @updatingExistingPet {}
    Examples:
      | a |










