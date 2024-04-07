Feature: Update Booking


Background:
* url 'https://restful-booker.herokuapp.com'

* def Payload =
"""
{
    "firstname" : "Sarjerao",
    "lastname" : "Gaikwad",
    "totalprice" : 117,
    "depositpaid" : true,
    "bookingdates" : {
        "checkin" : "2018-01-01",
        "checkout" : "2019-01-01"
    },
    "additionalneeds" : "Breakfast"
}
"""

Scenario: Update booking
Given path '/booking/1'
And header Authorization = 'Basic YWRtaW46cGFzc3dvcmQxMjM='
And header Content-Type = 'application/json'
And header Accept = 'application/json'
And request Payload
When method PUT
Then status 200
* print response 




