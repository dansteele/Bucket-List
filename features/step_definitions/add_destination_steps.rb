Given(/^they have signed in$/) do
  step "I am on the sign in page"
  step "I sign in"
end

When(/^they add a destination$/) do
  fill_in "Name", :with => "India"
  fill_in "Image URL", :with => "http://example.org/img.jpg"
  click_button "Add Destination"
end

Then(/^it should appear on the page$/) do
  pending # express the regexp above with the code you wish you had
end
