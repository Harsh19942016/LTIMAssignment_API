Feature: GET Booking
Background: 
 * url 'https://restful-booker.herokuapp.com/booking'

Scenario: Featching all booking ID's

When method GET
Then status 200
* print response
* def id = response
* print id

Scenario: Create booking
* def jsonObject =
"""
[
{
"id" : "1",
"firstname" : "Jim",
    "lastname" : "Brown",
    "totalprice" : 111,
    "depositpaid" : true,
    "bookingdates" : {
        "checkin" : "2018-01-01",
        "checkout" : "2019-01-01"
    },
    
 "additionalneeds" : "Breakfast"
},
{
"id" : "2",
"firstname" : "Harsh",
    "lastname" : "Devkar",
    "totalprice" : 778,
    "depositpaid" : true,
    "bookingdates" : {
        "checkin" : "2018-01-02",
        "checkout" : "2019-01-02"
    },
    
 "additionalneeds" : "Charging point"
}


]

"""
* print jsonObject
* print jsonObject[0]
* print jsonObject[1].firstname
* print jsonObject[1].lastname+"  " + jsonObject[0].lastname
* def id = jsonObject[1].id
* print id 
* def actName = jsonObject[0].firstname
* print actName
* match actName == 'Jim'
