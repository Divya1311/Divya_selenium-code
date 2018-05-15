Given("when i am in login page") do
  $driver.get 'https://www.facebook.com' 
  sleep 3
# Write code here that turns the phrase above into concrete actions
end

When("I check email id") do
# to find the location
  element=$driver.find_element(:id, "email")
  a=element.location()
  puts "Location of email #{a}"
  sleep 3

  if element==true
  	puts "email is enabled"
  else
  	puts "email is disabled"
  end
  
  #To check element is displayed or not
  if (element).displayed?
  	puts "element is displayed"
  end
 # Write code here that turns the phrase above into concrete actions
end
Then("display the result") do
  #pending # Write code here that turns the phrase above into concrete actions
end
#To verify the password field
When("I verify the password is enabled displayed") do
  element1=$driver.find_element(:id, "pass")
  pwdelement= element1.location()
  puts "#{pwdelement}" 

  if (element1).displayed? 
   puts "pwd displayed"
   else
   puts "pwd not displayed"
   end

   if pwdelement==true
   puts "pwd is enabled"
   else 
   puts "pwd is disabled"
   end
   #browser.close()#{"test case is passed"}"#Write code here that turns the phrase above into concrete actions
end

When("I verify Login Forgot password button") do
  element2=$driver.find_element(:xpath, "//input[@data-testid='royal_login_button']") 
  login_loc=element2.location()
  puts "Enter the login button location #{login_loc}"

  if (element2).displayed?
  	puts "Login is displayed #{element2}"
  else puts "login button not displayed"
  end
  #Forgot password verificatio
  element3=$driver.find_element(:xpath, ".//*[@id='login_form']/table/tbody/tr[3]/td[2]/div/a") 
  forgpwd_loc=element3.location()
  puts "Enter the forgotpwd button location #{forgpwd_loc}"

  if (element3).displayed?
  	puts "forgotpwd is displayed #{element3}"
  else puts "forgotpwd button not displayed"
  end# Write code here that turns the phrase above into concrete actions
# Write code here that turns the phrase above into concrete actions
end


When("I verify Firstname Surname") do
  element4=$driver.find_element(:name, "firstname")
  fname=element4.location()
  puts "Enter the Fname location #{fname}"

  if (element4).displayed?
  puts "Fname is displayed"
  else puts "Fname is not displayed"
  end

  if element4==true
  puts "Fnmae is enabled"
  else puts "Fname is disabled"
  end  # Write code here that turns the phrase above into concrete actions
end

When("I verify phone or email") do
  element5=$driver.find_element(:id, "u_0_o")

  if (element5).displayed? 
  puts "Email textbox is displayed" 
  else puts "Email textbox not displayed"
  end

  if element5==true
  puts "mail is enabled"
  else puts "mail textbox is disabled"
  end
# Write code here that turns the phrase above into concrete actions
end

When("I verfify password") do
   # Write code here that turns the phrase above into concrete actions
end

When("I Birthday dateult") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I verify gender") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I verify Signup button") do
  pending # Write code here that turns the phrase above into concrete actions
end


