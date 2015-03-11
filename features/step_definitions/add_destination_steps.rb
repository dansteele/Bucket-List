Given(/^they have signed in$/) do
  step "I am on the sign in page"
  step "I sign in"
end

When(/^they add a destination$/) do
  within('#add-destination') do
    fill_in "Name", :with => "India"
    fill_in "Image URL", :with => "http://example.org/img.jpg"
    click_button "Add Destination"
  end
end

Then(/^it should appear on the page$/) do
  expect(page.has_content? 'India').to be true
  expect(page.has_css? 'img[src="http://example.org/img.jpg"]').to be true
end

When(/^they add an activity$/) do
  within("#destination_#{@italy.id}") do
    fill_in "Name", :with => "Eat Pasta"
    fill_in "Image URL", :with => "http://example.org/spag.jpg"
    click_button "Add Activity"
  end
end

Then(/^they see their activity under the relevant destination$/) do
  within "#destination_#{@italy.id}" do
    expect(page.has_content? 'Eat Pasta').to be true
    expect(page.has_css? 'img[src="http://example.org/spag.jpg"]').to be true
  end
end

Then(/^the activity is stored in the traveller's bucket list$/) do
  expect(@traveller.reload.activities.length).to eq 2
end
