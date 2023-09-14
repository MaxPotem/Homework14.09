Feature: 1.2 Inventory

Background: 
Given main page URL is opened

@Smoke
Scenario: 1.2_01 Main scenario: user should be able to add items in the cart to buy them
	Given user is on the main page
	And user click on "Add to cart" button
	When Item appears in the cart
	Then Item can be bougth 

	@Smoke
	Scenario: 1.2_02 user should be able to add as many items in the cart as he/she wants
		Given user is on the main page
		And user clicks on all "Add to cart" buttons
		When All items appears in the cart
		Then Items can be bougth 

	@Smoke
	Scenario: 1.2_03 user should be able to delete items from the cart
		Given user is in the cart page
		And user clicks on the "Remove" button
		When Item is deleted from the cart
		Then Item are no moore choosen.
		
	@Smoke
	Scenario: 1.2_04 user should be able to delete as many items in the cart as he/she wants
		Given user is in the cart page
		And user clicks on the "remove" button for all items
		When All items are deleting from the cart
		Then No items are choosen
@Regression
Scenario Outline: 1.2 Inventory
	When User click on "Add to cart" button 
	Then Item appears in the cart
	When User clicks on the "Remove" button 
	Then Item is deleted from the cart

Examples:
	| Buttons       | Behavior                  |
	| "Add to cart" | Item is added to the cart |
	| "Remove"      | Item is deleted from the cart          |
