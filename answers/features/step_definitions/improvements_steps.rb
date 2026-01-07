Given('we start with an empty bucket of paint') do
  puts('The bucket is empty')
end

When('we add {word} paint') do |colour|
  puts("#{colour} paint added")
end

Then(/^the result is (orange|green|purple) paint$/) do |result|
  puts("The paint is now #{result}")
end
