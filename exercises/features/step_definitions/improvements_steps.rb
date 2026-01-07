Given('we start with an empty bucket of paint') do
  puts('The bucket is empty')
end

When('we add red paint') do
  puts('Red paint added')
end

When('we add yellow paint') do
  puts('Yellow paint added')
end

Then('the result is orange paint') do
  puts('The paint is now orange')
end

When('we add blue paint') do
  puts('Blue paint added')
end

Then('the result is green paint') do
  puts('The paint is now green')
end

Then('the result is purple paint') do
  puts('The paint is now purple')
end
