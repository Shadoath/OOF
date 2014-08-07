Given(/^I am on the home page$/) do
   page.visit "/"
   assert page.has_content?("Home")
end

When(/^I click the following links (.+)$/) do |visit_pages|
   visit_pages.split(', ') do |page|
      click_link(visit_page)
   end
end 

Then(/^I should see on page "(.*?)"$/) do |arg1| 
   assert page.has_content?(arg1)                                                                                                                             
end