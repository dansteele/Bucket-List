Given(/^some travellers exist$/) do
  @traveller1 = create(:traveller)
  @traveller2 = create(:traveller)
end

Then(/^I should see a list of travellers$/) do
  expect(page.has_content? @traveller1.name).to be true
  expect(page.has_content? @traveller2.name).to be true
end
