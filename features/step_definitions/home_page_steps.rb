Given(/^ther's ia applicant name "(.*?)" with "(.*?)" email$/) do |name, email|
  @applicant = FactoryGirl.create(:applicant, name: name, email: email)
end

When(/^I am on the homepage$/) do
  visit root_path
end


Then(/^I should see the "(.*?)" applicant$/) do |name|
  @applicant = Applicant.find_by_name(name)

  page.should have_content(@applicant.name)
  page.should have_content(@applicant.email)
end