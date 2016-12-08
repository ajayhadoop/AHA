Feature: AHA application login
        As a registerd user should login into AHA

Scenario: I Provide credentials and logon
Given I navigate to "https://dev.precision.heart.org/wordpress/"
And I enter "username@domain.com" into input field having id "email"
And I enter "password" into input field having id "password"
Then I click on element with name "sign_in"
And I wait for 3 seconds

        

Scenario: I Provide my details and get registered 
Given I navigate to "https://dev.precision.heart.org/wordpress/"
When I enter "my_first_name" into input field having id "first_name"
And I enter "my_last_name" into input field having id "last_name"
And I enter "username@domain.com" into input field having xpath "/html/body/div/div/div[1]/div/div/div/div/div[2]/form/div[3]/div[2]/input"
Then I enter "organization_name" into input field having id "organization_name"
And I enter "Password123" into input field having xpath "/html/body/div/div/div[1]/div/div/div/div/div[2]/form/div[5]/div[2]/input"
And I enter "re_enter_password" into input field having id "re_password"
Then option "Researcher" by text from dropdown having id "user_type" should be selected
Then I click on element with name "register"
And I wait for 20 seconds
