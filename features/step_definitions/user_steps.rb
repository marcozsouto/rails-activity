Given("i am at the page create user") do 
    visit 'signup'
end

When("i fill username {string}, email {string}, password {string} and password confirmation {string}") do |username, email, password, password_confirmation|
    fill_in 'user[username]', :with => username
    fill_in 'user[email]', :with => email
    fill_in 'user[password]', :with => password
    fill_in 'user[password_confirmation]', :with => password_confirmation
end

And("i click create") do 
    click_button 'submit'
end

Then("i see a created user message") do 
    expect(page).to have_content("User was successfully created.")
end

#FOR SCENARIO edit user 

Given("i am logged with the user whose username is {string}") do |username|
    visit 'signup'
    fill_in 'user[username]', :with => username
    fill_in 'user[email]', :with => username + '@gmail.com'  
    fill_in 'user[password]', :with => '123456'
    fill_in 'user[password_confirmation]', :with => '123456'
    click_button 'submit'
    visit '/logout'
    visit '/login'
    fill_in 'username', :with => 'rose'
    fill_in 'password', :with => '123456'
    click_button 'login'
end
  
And("i am on the user's edit page with the username is {string}") do |username|
    visit'/users'
    click_link"e-#{username}"

end

And("i click edit") do
    click_button 'submit'
end

Then("i see a updated user message") do
    expect(page).to have_content("User was successfully updated.")
end
