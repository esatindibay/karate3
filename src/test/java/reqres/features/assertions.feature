Feature: user details verification with assert keyword

  Background:
      * url 'https://reqres.in/api/users'
      * def expectedOutput = read('../jsonFiles/response2.json')
      * method GET

  Scenario: verifying whole response payload(body)
        * status 200
        * match response == expectedOutput

  Scenario: another keyword can be used for verification , contains
        * match response contains {"total": 12}
        # total is  main field in json body so i used directly but if i need to use sub fields
        # i would use response.sub1 contains {...:...}

  Scenario: verifying that 2,3 and 4th ids are in response
        * match response.data[*].id contains [2,3,4]
        * match response.data[*].id !contains [45]
        # in my response body there is no id which is 45, unless i use ! before contains, it fails

  Scenario: using assert in numbers(integers)
        * def x = 4503
        * def y = 4503
        * assert x == y
        # assert behaves as like match , but match is a little bit smarter it ignores white-spaces

  Scenario: an example of set and match
        * def x = { city: "istanbul" }
        * set x.city = 'st peters'
        * match x == { city: 'st peters' }





