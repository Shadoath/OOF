Given(/the following plant/) do |table|
   plant_data = table.hashes
   #puts plant_data.inspect
   plant_data.each do |plant|
      Plant.create!(name: plant[:name], plant_type: plant[:plant_type], plant_group: plant[:plant_group])
   end
end

When(/^I go to the list of plants$/) do 
   page.visit "/plants/"
end 

Then(/^I should see "(.*?)"$/) do |arg1| 
   assert page.has_content?(arg1)                                                                                                                             
end

Given(/^I am on the home page and click Plant link$/) do 
   HarvestType.create!(name: "Single Harvest")
   WaterType.create!(name: "Light")

   click_link('Plant')
end

When(/^I fill out the plant form with:$/) do |table| 
   plant_data = table.hashes
   plant = plant_data.first
   fill_in('plant_name', with: plant[:name])
   fill_in('Plant type', :with => plant[:plant_type])
   fill_in('Plant group', :with => plant[:plant_group])   
   select('Single Harvest', :from => 'Harvest type')
   select('Light', :from => 'Water amount')
end

Then(/^I should see Plant was successfully created\.$/) do 
   assert page.has_content?("Plant was successfully created")
end



