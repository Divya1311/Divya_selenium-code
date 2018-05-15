Given("when user in signup screen") do
  $driver.get 'https://en-gb.facebook.com/' # Write code here that turns the phrase above into concrete actions
end

When("I enter firstname") do

  #Tested with no input data
  $driver.find_element(:xpath, ".//*[@id='u_0_j']").send_keys('')
  puts "Null value not accepted"
 
  $driver.find_element(:xpath, ".//*[@id='u_0_11']").click
  sleep 3
   # Write code here that turns the phrase above into concrete actions
end

Then("display the firstname") do
  $driver.find_element(:xpath, ".//*[@id='u_0_j']").send_keys('Johny')
  sleep 3 #Puts "Display the firstname" # Write code here that turns the phrase above into concrete actions
end

When("I enter lastname") do
  $driver.find_element(:xpath, ".//*[@id='u_0_l']").send_keys('')
  sleep 3

  $driver.find_element(:xpath, ".//*[@id='u_0_11']").click
  puts "Null value not accepted"
  sleep 3
 # Write code here that turns the phrase above into concrete actions
end

Then("display the lastname") do
  $driver.find_element(:xpath, ".//*[@id='u_0_l']").send_keys('Wilson')
  sleep 3 # Write code here that turns the phrase above into concrete actions
end

When("I enter the invalid e-mail") do
  $driver.find_element(:xpath, ".//*[@id='u_0_o']").send_keys('test@')
  sleep 3
  $driver.find_element(:xpath, ".//*[@id='u_0_11']").click
  puts "Invalid e-mail id"
  sleep 3
  $driver.find_element(:xpath, ".//*[@id='u_0_o']").send_keys('test@gmail')
  sleep 3
  $driver.find_element(:xpath, ".//*[@id='u_0_11']").click
  puts "Invalid e-mail id"
  sleep 3
  $driver.find_element(:xpath, ".//*[@id='u_0_o']").send_keys('')
  sleep 3
  $driver.find_element(:xpath, ".//*[@id='u_0_11']").click
 
  # Write code here that turns the phrase above into concrete actions
end

Then("display error message") do
    puts "Invalid e-mail id"# Write code here that turns the phrase above into concrete actions
end

When("I enter invalid password") do
  $driver.find_element(:xpath, ".//*[@id='u_0_v']").send_keys('test@')
  sleep 3
  $driver.find_element(:xpath, ".//*[@id='u_0_11']").click
  puts "Invalid e-mail id"
  sleep 3
  $driver.find_element(:xpath, ".//*[@id='u_0_v']").send_keys('test@gmail')
  sleep 3
  $driver.find_element(:xpath, ".//*[@id='u_0_11']").click
  puts "Invalid e-mail id"
  sleep 3
  $driver.find_element(:xpath, ".//*[@id='u_0_v']").clear
  sleep 2
  $driver.find_element(:xpath, ".//*[@id='u_0_v']").send_keys('')
  sleep 3
  $driver.find_element(:xpath, ".//*[@id='u_0_11']").click # Write code here that turns the phrase above into concrete actions
end

Then("display invalid message") do
  puts "invalid password" # Write code here that turns the phrase above into concrete actions
end

When("I click on signup button") do
  $driver.find_element(:xpath, ".//*[@id='u_0_11']").click
  sleep 3#puts "invalid password" # Write code here that turns the phrase above into concrete actions
end

Then("Display error message") do
 puts "Invalid email and password" # Write code here that turns the phrase above into concrete actions
end

When("I click signup without selecting the gender") do
	a=$driver.find_element(:xpath, ".//*[@id='u_0_9']")
	b=$driver.find_element(:xpath, ".//*[@id='u_0_a']")
	if (a && b) == true
		puts "gender selected"
	else
		puts "gender not selected"
	end
 # $driver.find_element(:xpath, ".//*[@id='u_0_11']").click # Write code here that turns the phrase above into concrete actions
end

Then("display the error message") do
  #pending # Write code here that turns the phrase above into concrete actions
end

When("I enter the valid email") do
  $driver.find_element(:xpath, ".//*[@id='u_0_o']").clear
  sleep 3
  $driver.find_element(:xpath, ".//*[@id='u_0_o']").send_keys('test05@gmail.com')
  sleep 3
  $driver.find_element(:xpath, ".//*[@id='u_0_r']").send_keys('test05@gmail.com')
  sleep 3
  # Write code here that turns the phrase above into concrete actions
end

When("i enter the valid password") do
  $driver.find_element(:xpath, ".//*[@id='u_0_v']").send_keys('Test@123')
  sleep 3
  # Write code here that turns the phrase above into concrete actions
end

When("I select the gender") do
 $driver.find_element(:xpath, ".//*[@id='u_0_9']").click
 sleep 3#pending # Write code here that turns the phrase above into concrete actions
end

When("click on signup button") do
  $driver.find_element(:xpath, ".//*[@id='u_0_11']").click 
  sleep 3 # Write code here that turns the phrase above into concrete actions
end

Then("display the successfull message.") do
   $driver.find_element(:xpath, "//button[@class='_42ft _4jy0 layerConfirm _2rsa uiOverlayButton _4jy3 _4jy1 selected _51sy']").click
   puts "display the home page"# Write code here that turns the phrase above into concrete actions
end

When("i click on user image icon") do
  sleep 3
  $driver.find_element(:xpath, "//span[@class='_1vp5']").click
  sleep 3 # Write code here that turns the phrase above into concrete actions
end

Then("display user profile page") do
  puts "display the profile screen" # Write code here that turns the phrase above into concrete actions
end
