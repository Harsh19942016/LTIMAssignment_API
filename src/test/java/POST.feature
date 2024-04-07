Feature: New Booking create
Background:
* url 'https://restful-booker.herokuapp.com'

* def Payload =
"""
{
    "firstname" : "Harshvardhan",
    "lastname" : "devkar",
    "totalprice" : 987,
    "depositpaid" : true,
    "bookingdates" : {
        "checkin" : "2018-01-01",
        "checkout" : "2019-01-01"
    },
    "additionalneeds" : "Breakfast"
}
"""

Scenario: creating new booking
Given path '/booking'
And request Payload
And header Content-Type = 'application/json'
And header Accept = 'application/json'
When method POST
Then status 200
* print response


