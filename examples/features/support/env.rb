Before('@addition') do
  puts('Starting addition...')
end

After('@addition') do
  puts('Addition finished...')
end

# Around('@addition') do |scenario, block|
#   puts('Starting addition...')
#   block.call
#   puts('Addition finished...')
# end
