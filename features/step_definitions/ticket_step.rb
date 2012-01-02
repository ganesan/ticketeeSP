Given /^that project has a ticket:$/ do |table|
  #puts table
  table.hashes.each do |attributes|
    #puts attributes
    @project.tickets.create!(attributes)
  end
end