Feature:Using functions

    Background:
     * def expectedOutput = read('../jsonFiles/response1.json')

    Scenario:
      * url 'https://reqres.in/api/users/3'
      * method GET
      * status 200
      * print response

      # a function can be created like this
      * def myFunc = function(){  return 'Hi!'  }
      * def returnedData = call myFunc
      * print returnedData

      # or  you can design a function like this
      * def myFunc2 =
      """
      function(){
      return 'hello!'
      }
      """
      * def returnedData2 = call myFunc2
      * print returnedData2

    Scenario: sum function and an important point for multiple input functions
      * def sum =
      """
      function(x,y){
      return x+y
      }
      """
      * def result = sum(1,4502)
      * print result
      # generally we use call keyword for functions BUT if there are multiple inputs in function,like x and y
      # you need to use function name(inputs) just after = sign ....( no need to use call keyword)
      * print sum(1200,83)
      # this is the best way!!



