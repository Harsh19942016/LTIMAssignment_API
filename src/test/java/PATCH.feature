Feature:  Performing PATCH Request
Background: 
* url 'https://restful-booker.herokuapp.com'

Scenario: Update First Name and Last Name Booking
Given path  '/booking/1'
And header Authorization = 'Basic YWRtaW46cGFzc3dvcmQxMjM='
And header Content-Type = 'application/json'
And header Accept = 'application/json'
And request {"firstname" : "Ankush" }
  * request {"lastname" : "Pawar"}
When method PATCH
Then status 200
* print response