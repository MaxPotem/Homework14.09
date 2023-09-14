Feature: 1.1 Sign In.feature

Background: 
Given Log In URL is opened

@Smoke
Scenario: 1.01_01 Main scenario: user should be able to Log In and use functionality
	Given user entered "standard_use" into "Username" input
	And user entered "secret_sauce" into "Password" input
	When user click on "login" button
	Then "Home page" should become visible

@Sanity
Scenario: 1.1_02 The user should be redirected to the "Login" page using the link of other pages
	When user print url of any page in a website
	Then "https://www.saucedemo.com/" link should be opened

@Regression
Scenario Outline: 1.1_03 Validation of the "Username" input
	When user enters <locked_out_user> into the "Name" input
	Then <Sorry, this user has been locked out> text should be visible

Examples:
	| Username        | error |
	| locked_out_user | "Sorry, this user has been locked out" |
	| empty | "Username is required"          |
	| 123   | " Username and password do not match any user in this service" |