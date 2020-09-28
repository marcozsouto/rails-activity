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


