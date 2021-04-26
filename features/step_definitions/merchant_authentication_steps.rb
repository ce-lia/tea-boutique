Given('I am a registered merchant') do
  @registered_merchant = FactoryBot.create(:merchant,
  email: 'tester@testdomain.test',
  password: 'pa$$word')
end

Given('I visit my dashboard') do
  visit dashboard_path
end

When('I fill in the dashboard login form') do
  click_button 'Log in'
  fill_in 'email_log', with: 'tester@testdomain.test'
  fill_in 'password_log', with: 'pa$$word'
  click_button 'Log in'
end

Given('I am logged in as a merchant') do
  visit dashboard_path
  click_button 'Log in'
  fill_in 'email_log', with: 'tester@testdomain.test'
  fill_in 'password_log', with: 'pa$$word'
  click_button 'Log in'
end

Then('I should be redirected to the dashboard log in page') do
  expect(page).to have_content('Log in')
end

