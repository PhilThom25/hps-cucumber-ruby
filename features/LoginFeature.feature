Feature: LoginFeature
	In order to avoid silly mistakes
	As a math idiot
	I want to be told the sum of two numbers
	changement

@mytag
Scenario Outline: Login to Client Portal
	Given I am on the login page
	When I enter a valid <email> in the email field
	And I enter a valid <password> in the password field
	And I click Login button
	Then I will be taken to the client portal homepage
	And I will see my <name> in the top corner of the page

Examples: 
    | email                       | password    | name           |
    | itdevelopment@bwlegal.co.uk | BWLegal.123 | IT Development |
