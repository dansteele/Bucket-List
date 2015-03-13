When(/^they press the "(.*?)" link$/) do |link|
  @activity_count = @traveller.activities.count
  first('.activity').click_link link
end

Then(/^the activity disappears from the page$/) do
  expect(page.has_content? "Drive a ")
end

Then(/^the traveller no longer has that activity$/) do
  expect(@activity_count - 1).to eq(@traveller.activities.count)
end
