Given("when user in regidtration form") do
  $driver.get 'http://www.seleniumeasy.com/test/basic-first-form-demo.html' 
  sleep 3 # Write code here that turns the phrase above into concrete actions
end

When("I enter the message in textbox") do
  $driver.find_element(:xpath, ".//*[@id='user-message']").send_keys('I am divya')#
  sleep 3
  headertext=$driver.find_element(:xpath, ".//*[@id='name-and-slogan']")
  if (headertext).displayed?
  	puts headertext.text
else
	puts "data is missing"
end
  # Write code here that turns the phrase above into concrete actions
end

When("click on show message button to show the message") do
  $driver.find_element(:xpath, ".//*[@id='get-input']/button").click 
  sleep 5# Write code here that turns the phrase above into concrete actions
end

When("i enter the input a") do
  $driver.find_element(:xpath, ".//*[@id='sum1']").send_keys('10')
  sleep 3# Write code here that turns the phrase above into concrete actions
end

When("i enter the input b") do
  $driver.find_element(:xpath, ".//*[@id='sum2']").send_keys('20')
  sleep 3 # Write code here that turns the phrase above into concrete actions
end

When("click on Get total button") do
  $driver.find_element(:xpath, ".//*[@id='gettotal']/button").click
  sleep 3 # Write code here that turns the phrase above into concrete actions
end

When("i select bootstrap menu from dropdown list") do
  $driver.find_element(:xpath, ".//*[@id='treemenu']/li/ul/li[2]/i").click
  sleep 2
  $driver.find_element(:xpath, ".//*[@id='treemenu']/li/ul/li[2]/ul/li[1]/a").click
  sleep 2 # Write code here that turns the phrase above into concrete actions
end

Then("display the Date selection screen") do
  puts "display the bootstrap date picker screen"
  sleep 2 # Write code here that turns the phrase above into concrete actions
end

When("i click on the date picker icon") do
  $driver.find_element(:xpath, ".//*[@id='sandbox-container1']/div/span/i").click
  sleep 2 # Write code here that turns the phrase above into concrete actions
end

Then("display the date picker") do
  puts "display the datepicker" # Write code here that turns the phrase above into concrete actions
end

When("I select the month") do
  $driver.find_element(:xpath, "html/body/div[3]/div[1]/table/thead/tr[2]/th[2]").click
  sleep 2
end

When("I select the year") do
  $driver.find_element(:xpath, "html/body/div[3]/div[2]/table/tbody/tr/td/span[3]").click
  sleep 2# Write code here that turns the phrase above into concrete actions
end

When("I select the date") do
  $driver.find_element(:xpath, "html/body/div[3]/div[1]/table/tbody/tr[1]/td[1]") .click
  sleep 3# Write code here that turns the phrase above into concrete actions
end

Then("display the date in date field") do
  puts "display the date"
 
  #$driver.quit # Write code here that turns the phrase above into concrete actions
end

When("I select the table menu") do
  $driver.find_element(:xpath, ".//*[@id='treemenu']/li/ul/li[3]/i").click
  sleep 3# Write code here that turns the phrase above into concrete actions
end

When("I select the Pagination table from dropdown list") do
  $driver.find_element(:xpath,".//*[@id='treemenu']/li/ul/li[3]/ul/li[1]/a").click 
  sleep 3# Write code here that turns the phrase above into concrete actions
end

When("display the table") do
  puts "display the table" # Write code here that turns the phrase above into concrete actions
end

#Then("read all the data in table") do
   #$driver.find_element(:xpath, "html/body/div[2]/div/div[2]/section/div").click
   #sleep 5
   # Write code here that turns the phrase above into concrete actions
#end

When("I select the page {int},{int},{int}") do |int, int2, int3|
  $driver.find_element(:xpath, ".//*[@id='myPager']/li[2]/a").click
  sleep 3
  $driver.find_element(:xpath, ".//*[@id='myPager']/li[3]/a").click
  sleep 3
  $driver.find_element(:xpath, ".//*[@id='myPager']/li[4]/a").click
  sleep 3
 #To check previous and next arrow
  $driver.find_element(:xpath, ".//*[@id='myPager']/li[1]/a").click
  sleep 3
  $driver.find_element(:xpath, ".//*[@id='myPager']/li[5]/a").click
  sleep 3 
  # Write code here that turns the phrase above into concrete actions
  #Puts "The total no. of pages in table;"
  a=$driver.find_element(:xpath, ".//*[@id='myPager']")
  for a in 1..3 do 
  	puts "#{a}"
  end
end

Then("display the screens") do
  puts "display the screens" # Write code here that turns the phrase above into concrete actions
end

#Then("i want to get first row data") do
 # row=$driver.find_element(:xpath, "") # Write code here that turns the phrase above into concrete actions
#end

When("I click load data dynamicaly from others dropdown") do
  $driver.find_element(:xpath, ".//*[@id='navbar-brand-centered']/ul[2]/li[4]/a/b").click
  sleep 2
  $driver.find_element(:xpath, ".//*[@id='navbar-brand-centered']/ul[2]/li[4]/ul/li[2]/a").click
  sleep 2
   # Write code here that turns the phrase above into concrete actions
end

Then("display the page") do
  puts "display the page" # Write code here that turns the phrase above into concrete actions
end

When("I clck on get new image button") do
  $driver.find_element(:xpath, ".//*[@id='save']").click
  sleep 5
  data=$driver.find_element(:xpath, ".//*[@id='loading']")
  if (data).displayed?
  	puts "data is present"
  else
  	puts "data is missing"
  end

  image=$driver.find_element(:xpath, ".//*[@id='loading']/img")
  if (image).displayed?

  	puts "image is present"
  end
   # Write code here that turns the phrase above into concrete actions
end

#Then("display the image, firstname, lastname") do
  # puts "display the image,firstname, lastname")# Write code here that turns the phrase above into concrete actions
#end
#Given("when user in home page") do
  #puts "display the home page" # Write code here that turns the phrase above into concrete actions
#end

When("I click on Inputforms menu") do
  $driver.find_element(:xpath, ".//*[@id='navbar-brand-centered']/ul[1]/li[1]/a/b").click
  sleep 3# Write code here that turns the phrase above into concrete actions
end

Then("display the values") do
  b=$driver.find_element(:xpath, ".//*[@id='navbar-brand-centered']/ul[1]/li[1]/ul")
  puts b.text()
  for b in 1..7 do 
  puts "#{b}"
 end# Write code here that turns the phrase above into concrete actions
 end

When("I click on dropdown menu") do
  $driver.find_element(:xpath, ".//*[@id='navbar-brand-centered']/ul[1]/li[1]/a/b").click
  sleep 3
  
  $driver.find_element(:xpath, "//a[@linkText='JQuery Select dropdown']").click
  sleep 4
  # Write code here that turns the phrase above into concrete actions
end

Then("display the dropdown screen") do
  puts "display the dropdown screen" # Write code here that turns the phrase above into concrete actions
end

When("I select the dropdown list") do
   $driver.find_element(:xpath, "html/body/div[2]/div/div[2]/div[1]/div/div[2]/span/span[1]/span/span[2]").click
   sleep 2
   #here that turns the phrase above into concrete actions
end


Then("display the list of countries") do
   # Write code here that turns the phrase above into concrete actions
end






