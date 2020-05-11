Feature:  Java Functions calling

  Scenario: call java method
    * def j = Java.type('reqres.JavaFunctions')
    * def result = new j().nonstaticfunc();

    Scenario: call second java class and method
      * def j = Java.type('reqres.JavaFunc2')
      * def result = new j().second("is it palindrome");
      * print result

      Scenario: creating data.txt file from java class and put some data there
        * def j = Java.type('reqres.WriteData')
        * def r3 = j.write("now this is third line")



