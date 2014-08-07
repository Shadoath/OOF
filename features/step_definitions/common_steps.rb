When /^I fill out the form with the following attributes:$/ do |table|
   puts table.rows_hash
   criteria = table.rows_hash.each do |field, value|
     fill_in field.to_sym, :with => value
   end
end

When /^I click the (.*?) button$/ do |button|
   click_button button
end

When /^I click the (.*?) link$/ do |button|
   click_link button
end
