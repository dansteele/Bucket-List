When(/^they press the "(.*?)" link$/) do |link|
  binding.pry
  click_link link
end

Then(/^the activity disappears from the page$/) do
  expect(page.has_content? "Drive a ")
end

Then(/^the traveller no longer has that activity$/) do
  pending # express the regexp above with the code you wish you had
end
