Feature: 1.3 Cart Feature.

Background: 
Given application URL is opened

	@Smoke
	Scenario: 1.3_01 user should be able to add several items in the cart
		Given User is on the main page
		And User clicked on "Add to cart" button
		When Items appear in the cart
		Then User can add another item to the cart 

	@Smoke
	Scenario: 1.3_02 user should be able to remove several items from the cart
		Given User is on the cart page
		And User clicked on "Remove" button
		When Items removed from the cart
		Then User can remove another item from the cart

@Sanity
Scenario:  1.3_03 user should be able to continue shopping after adding item to the cart
	When user clicks on "Add to cart" button
	Then He stays at the main page and still can add other items to the cart

	@Sanity
	Scenario:  1.3_04 user should be able to see the amount of items in the cart
		When User opens the cart page
		Then He can see the amount of each item in special field

	@Sanity
	Scenario:  1.3_05 user should be able to be redirected to  "Checkout information" page.
		When User click on "Checkout" button
		Then He is redirecting to  "Checkout information" page.