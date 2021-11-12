def register_and_sign_in
  visit "/sign-up"
  fill_in "user[first_name]", with: "Bilbo"
  fill_in "user[last_name]", with: "Baggins"
  fill_in "user[email]", with: "bilbo@theshire.com"
  fill_in "user[password]", with: "smeagol"
  fill_in "user[password_confirmation]", with: "smeagol"
  click_button "Sign Up"
  visit "/sign-in"
  fill_in "email", with: "bilbo@theshire.com"
  fill_in "password", with: "smeagol"
  click_button "Log In"
end

def create_test_post
  visit "/"
  fill_in "post[message]", with: "Hello, world!"
  click_button "Create Post"
end