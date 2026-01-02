# Simple Calculator class
class Calculator
  def add(a, b)
    @result = a + b
  end

  def result
    @result
  end
end

# Step Definitions
Given('I have a calculator') do
  @calculator = Calculator.new
end

When('I add {int} and {int}') do |num1, num2|
  @calculator.add(num1, num2)
end

Then('the result should be {int}') do |expected_result|
  actual_result = @calculator.result
  if actual_result != expected_result
    raise "Expected #{expected_result}, but got #{actual_result}"
  end
end