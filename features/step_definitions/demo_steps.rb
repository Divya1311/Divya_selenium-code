Given("When user in product list page") do
  $driver.get 'https://www.amazon.in/' # Write code here that turns the phrase above into concrete actions
end

When("i search the type of product from product list") do
  $driver.find_element(:xpath, ".//*[@id='twotabsearchtextbox']").send_keys('shool bags')
  sleep 5
  $driver.find_element(:xpath, ".//*[@id='nav-search']/form/div[2]/div/input").click
  sleep 5 # Write code here that turns the phrase above into concrete actions
end

When("I select the product") do
  $driver.find_element(:xpath, ".//*[@id='result_0']/div/div/div/div[1]/div/div/a/img").click
  sleep 3 # Write code here that turns the phrase above into concrete actions
end

When("I add the product into the cart") do
  $driver.find_element(:xpath, ".//*[@id='add-to-cart-button']").click
  sleep 5 # Write code here that turns the phrase above into concrete actions
end

When("I Proceed to checkout") do
  sleep 5
  $driver.find_element(:id, "hlb-ptc-btn-native").click # Write code here that turns the phrase above into concrete actions
end


Then("display login page") do
  sleep 3	
  puts "display the login page" # Write code here that turns the phrase above into concrete actions
end

When("I enter valid username") do
  $driver.find_element(:xpath, ".//*[@id='ap_email']").clear
  sleep 2
  $driver.find_element(:xpath, ".//*[@id='ap_email']").send_keys('dhivyakss@gmail.com')
  sleep 3# Write code here that turns the phrase above into concrete actions
end

When("I enter valid password") do
  $driver.find_element(:xpath, ".//*[@id='ap_password']").clear
  sleep 2
  $driver.find_element(:xpath, ".//*[@id='ap_password']").send_keys('amazon') 
  sleep 3
  a=$driver.find_element(:xpath, "//input[@name='rememberMe']")
  if a==true
  	puts "checkbox is enabled"
  	else
  		puts "checkbox is disabled"
  		end# Write code here that turns the phrase above into concrete actions
end

Then("click on login button") do
  sleep 3
  $driver.find_element(:xpath, ".//*[@id='signInSubmit']").click # Write code here that turns the phrase above into concrete actions
end
