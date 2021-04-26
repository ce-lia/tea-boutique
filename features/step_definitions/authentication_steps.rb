Given('I visit the homepage') do
  visit root_path
end

When('I fill in the sign up form') do
 click_link 'Sign up'
 fill_in 'email', with: 'tester@testdomain.test'
 fill_in 'password', with: 'pa$$word'
 fill_in 'password_confirmation', with: 'pa$$word'
 click_button 'Sign up'
end

When('I confirm the email') do
  open_email('tester@testdomain.test')
  visit_in_email('Confirm my account')
end

Then('I should see that my account is confirmed') do
  message = 'Your email address has been successfully confirmed'
  expect(page).to have_content(message)
end

Given('I am a registered client') do
  @registered_client = FactoryBot.create(:client,
  email: 'tester@testdomain.test',
  password: 'pa$$word')
end

When('I fill in the login form') do
  click_link 'Log in'
  fill_in 'email_log', with: 'tester@testdomain.test'
  fill_in 'password_log', with: 'pa$$word'
  click_button 'Log in'
end

Then('I should be logged in') do
  expect(page).to have_content('Log out')
end

Given('I am logged in') do
  visit root_path
  click_link 'Log in'
  fill_in 'email_log', with: 'tester@testdomain.test'
  fill_in 'password_log', with: 'pa$$word'
  click_button 'Log in'
end

When('I click on the log out button') do
 click_link 'Log out'
end

Then('I should be redirected to the log in page') do
  expect(page).to have_content('Log in')
end
