Feature:advance examples of functions

  Background:
    * def expectedOutput = read('../jsonFiles/response1.json')


  Scenario: printing the response body
    * url 'https://reqres.in/api/user/3'
    * method GET
    * status 200
    * print response


  Scenario: usage of $ sign in json path
     * url 'https://reqres.in/api/user/3'
     * method GET
     * status 200
     * match $.data.year == 2002
     # here i used $ instead of response keyword, i can use $ for root json object name

  Scenario: verify a field has desired type of information
     * url 'https://reqres.in/api/user/3'
     * method GET
     * status 200
     * match response.data.name == '#string'
     * match $.data.year == '#number'
     # DO NOT use assert for data type verification, it fails
     # assert response.data.name == '#string' this does not work


  Scenario: getting number of persons
    * url 'https://reqres.in/api/user/3'
    * method GET
    * def data = response.data
    # DONT forget:if you put extra space in query, it fails
    # for instance, def  data = response.data does not work ( becasue of 2 spaces between def and data)
    * def giveLength =
    """
    function(arg){
    return arg.length
    }
    """
    * def numberOfElements = call giveLength data
    * print numberOfElements
    # it returns 5, means that in data array ou have 5 different json objects,

  Scenario: print only email of  the person whose id is 11
    * url 'https://reqres.in/api/users?page=2'
    * method GET
    * def data = response.data
    * def specificEmail =
    """
    function(arg){
        for(i=0; i<arg.length; i++){
           if(arg[i].id == 11){
            return arg[i]
            }
        }
    }
    """
    #* def ret = call op x
    # upper line is also acceptable but return type is json,in function,  so using json variable type is better
    * json ret = call specificEmail data
    * print ret.email

