Feature: Simple Calculator
  As a user
  I want to perform basic arithmetic operations
  So that I can calculate numbers quickly

  Scenario: Add two numbers
    Given I have a calculator
    When I add 5 and 3
    Then the result should be 8