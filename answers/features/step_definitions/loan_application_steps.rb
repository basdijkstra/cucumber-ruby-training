Given('John is an active ParaBank customer') do
  puts('John is an active ParaBank customer')
end

When('they apply for a {int} dollar loan') do |amount|
  puts("Loan application for $#{amount} submitted")
end

Then(/^the loan application is (approved|denied)$/) do |result|
  puts("Loan application is #{result}")
end

Given('their monthly income is {int}') do |income|
  puts("Monthly income is $#{income}")
end