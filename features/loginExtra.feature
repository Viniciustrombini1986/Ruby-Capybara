Feature: Sign in extra site
As customers desire extra.com e-commerce authenticate to the site, to get buy.

@loginExtra
Scenario Outline: I as a customer desire authenticate me, conduct a search and add to cart.
	Given I on the extra "<website>"
	And click the button to enter
	And fill in the email field "<email>"
	And fill in the password field "<password>"
	And click the login button
	Then the login must be carried through successfully
	And fill out the look with "<searchedTerm>" and click the button search
	And on the screen with the results click on a search item, validate the item screen correctly opened
	And add the item to the cart, validate if the item was added correctly
	
	Examples:
	|   	website	 		  |				email		  | password | searchedTerm	| 
	| http://www.extra.com.br | joaopaodebatata@gmail.com | joao1234 | Pneus	    |
