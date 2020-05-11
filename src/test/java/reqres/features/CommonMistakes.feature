Feature: some important points
  #  PUT and POST request need a body

  # body should be located just before * method post or * method put

  # spaces:  you cannot use extra space except from gherkin acceptance
         # for example * def  x = reponse --> this fails because of two spaces after def
                 #     *  def x = response --> it failse because of extra space after *
                 #     * def x   = response --> it fails because there are double spaces before =
                 #     *def x = response --> fails, you need to put 1 space after * ...

  # in json file you can change the order of fields BUT, in an array which is in jason body , you cannot do this
          # for example go to  java/reqres/jsonFiles/changingOrder.txt
  Scenario: example of changing order
    * def x = {name:'adem', lastname:'tatli'}
    * def y = {name:'adem', lastname:'tatli'}
    * def z = {lastname:'tatli', name:'adem'}
    * match x == y
    * match x == z
    # it does not fail because in json format you can change main field's order


    #if you have UnknownHostException, you need to check your internet connection or endpoint



