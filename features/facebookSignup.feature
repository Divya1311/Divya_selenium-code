Feature: To validate the signup page
Scenario:To validate signup page
Given when user in signup screen
When I enter firstname
Then display the firstname
When I enter lastname
Then display the lastname
When I enter the invalid e-mail
Then display error message
When I enter invalid password
Then display invalid message
When I click on signup button
Then Display error message
When I click signup without selecting the gender
Then display the error message
When I enter the valid email
When i enter the valid password
When I select the gender
And click on signup button
Then display the successfull message.

Scenario:To validate the home page
When i click on user image icon
Then display user profile page