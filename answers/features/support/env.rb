Before do |scenario|
  puts("Starting scenario '#{scenario.name}'")
end

After do |scenario|
  puts("Scenario '#{scenario.name}' finished")
end