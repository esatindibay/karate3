Feature: data driven test in dummy

  Background:
      * url 'http://dummy.restapiexample.com/api/v1/create'

    Scenario Outline: create user details dummy
      * request {"name":<n>,"salary":<s>,"age":<a>}
      * method post
      * status 200
      * print response

      Examples:
      |n   |s  |a  |
      |test|123|23 |


      #lets do the same job with another way---> using excel file
  Scenario Outline: create user details with excel file dummy
    * request {"name":<n>,"salary":<s>,"age":<a>}
    * method post
    * status 200
    * print response

    Examples:
      |read('../inputData.xlsx')|

