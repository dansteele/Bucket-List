Given(/^some travellers exist$/) do
  @traveller1 = create(:traveller)
  @traveller2 = create(:traveller)
  @traveller3 = create(:traveller)
  @traveller_array = [@traveller1, @traveller2, @traveller3]
end

When(/^I press the "(.*?)" link$/) do |link|
  click_link link
end

Then(/^I should see a list of travellers$/) do
  expect(page.has_content? @traveller1.name).to be true
  expect(page.has_content? @traveller2.name).to be true
  expect(page.has_content? @traveller3.name).to be true
end

Given(/^these travellers have activities at some destinations$/) do
  @traveller_array.each do |t|
    t.activities << create(:activity)
  end
end


Given(/^I am on the "(.*?)" page$/) do |arg1|
  binding.pry
  pending # express the regexp above with the code you wish you had
end

When(/^I press the first link$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see that traveller's public Bucket List$/) do
  pending # express the regexp above with the code you wish you had
end
