Feature: GET API feature

Scenario: get user details
Given url 'https://gorest.co.in/public/v1/users'
When method GET
Then status 200
* print response
* def jsonResponse = response
* print jsonResponse
* def actName = jsonResponse.data[0].name
* def actId = jsonResponse.data[0].id
* def actEmail = jsonResponse.data[0].email
* print actName
* match actName == 'Betsy Markson'
* match actId == 3020
* match actEmail == 'Erica6@hotmail.com'


Scenario: get user details - user not found
Given url 'https://gorest.co.in/public/v1/users'
And path 1
When method GET
Then status 404

