Given(/^I am on the homepage$/) do
  visit root_path
end

Given(/^I go to the sign\-up page$/) do
  click_link "Sign up"
end

When(/^I complete the form with valid details$/) do
  fill_in "Email", with: "danielsteele@dangarland.co.uk"
  fill_in "Password", with: "password1"
  fill_in "Password confirmation", with: "password1"
end

When(/^I submit the form$/) do
  click_on "Sign up"
end

Then(/^I should have an account$/) do
  expect(Traveller.count).to eq 1
end

Then(/^I should recieve a welcome email$/) do
  expect(ActionMailer::Base.deliveries.length). to eq 1
  expect(ActionMailer::Base.deliveries.first.subject). to match(/Welcome/)
end

Then(/^I should see "(.*?)" in the flash notice$/) do |message|
  within '#flash' do
    expect(page.has_content? message).to be true
  end
end
