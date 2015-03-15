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


Given(/^I am on the "(.*?)" page$/) do |page|
  visit send("#{page}_path".to_sym)
end

When(/^I click on the first traveller result$/) do
  page.find('td', :text => @traveller1.name).click_link(@traveller1.name)
end

Then(/^I should see that traveller's public Bucket List$/) do
  expect(page.has_content? @traveller1.name).to be true
  expect(page.has_content? @traveller1.activities.first.name).to be true
  expect(page.has_content? @traveller1.activities.first.destination.name).to be true
end