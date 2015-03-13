Given(/^some travellers exist$/) do
  @traveller1 = create(:traveller)
  @traveller2 = create(:traveller)
  @traveller3 = create(:traveller)
end

When(/^I press the "(.*?)" link$/) do |link|
  click_link link
end

Then(/^I should see a list of travellers$/) do
  expect(page.has_content? @traveller1.name).to be true
  expect(page.has_content? @traveller2.name).to be true
  expect(page.has_content? @traveller3.name).to be true
end
