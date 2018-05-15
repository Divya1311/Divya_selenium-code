
Given("When user in registration form") do
  $driver.get 'http://phptravels.org/register.php' # Write code here that turns the phrase above into concrete actions
end

When("I enter the Firstname") do

  $driver.find_element(:xpath, ".//*[@id='inputFirstName']").send_keys('Test')# Write code here that turns the phrase above into concrete actions
end

When("I enter the Last name") do
	sleep 3
   $driver.find_element(:xpath, ".//*[@id='inputLastName']").send_keys('user1')## Write code here that turns the phrase above into concrete actions
end

When("I enter  the email") do
	sleep 3
  $driver.find_element(:xpath, ".//*[@id='inputEmail']").send_keys('Test0009@gmail.com')# # Write code here that turns the phrase above into concrete actions
end

When("I enter the phone number") do
	sleep 3
  $driver.find_element(:xpath, ".//*[@id='inputPhone']").send_keys('9876583245')## Write code here that turns the phrase above into concrete actions
end

When("I enter Street address") do
  sleep 3
  $driver.find_element(:xpath, ".//*[@id='inputAddress1']").send_keys('125a,j.d.road,bargur')# Write code here that turns the phrase above into concrete actions
end

When("I enter City") do
  sleep 3
  $driver.find_element(:xpath, ".//*[@id='inputCity']").send_keys('Chennai') # Write code here that turns the phrase above into concrete actions
end

When("I enter State") do
  sleep 3
  $driver.find_element(:xpath, ".//*[@id='stateinput']").send_keys('Tamilnadu') # Write code here that turns the phrase above into concrete actions
end

When("I enter postcode") do
  sleep 3
  $driver.find_element(:xpath, ".//*[@id='inputPostcode']").send_keys('600097') # Write code here that turns the phrase above into concrete actions
end

=begin
When("I enter country") do
  sleep 3 
  @browser.select_list(:id => 'inputCountry').option(:text => 'India').select # Write code here that turns the phrase above into concrete actions
end

 # $driver.find_element(:xpath, ".//*[@id='inputCountry']/option[12]").click
  #sleep 3
  #$driver.find_elements(:xpath, ".//*[@id='inputCountry']").send_keys('India')
 #Write code here that turns the phrase above into concrete actions
end
When("i enter how to find you") do
  sleep 3
  $driver.find_elements(:xpath, ".//*[@id='customfield1']").click #
  #sleep 3
  # Write code here that turns the phrase above into concrete actions
end
=end

When("I enter mobile number") do
  sleep 3
  $driver.find_element(:xpath, ".//*[@id='customfield2']").send_keys('9876583247') # Write code here that turns the phrase above into concrete actions
end

When("i enter the password") do
  $driver.find_element(:xpath, ".//*[@id='inputNewPassword1']").send_keys('Asdf@123') # Write code here that turns the phrase above into concrete actions
end

When("I enter the confirm password") do
  $driver.find_element(:xpath, ".//*[@id='inputNewPassword2']").send_keys('Asdf@123') #Write code here that turns the phrase above into concrete actions
end

When("I upload the photo") do
  # Write code here that turns the phrase above into concrete actions
end



#When("I enter the captcha") do
#	sleep 3
  # $driver.find_element(:xpath, ".//*[@id='inputCaptcha']").send_keys('APUHC')## Write code here that turns the phrase above into concrete actions
#end

When("click on register button") do
  sleep 3
  $driver.find_element(:xpath, ".//*[@id='frmCheckout']/p/input").click
end

 