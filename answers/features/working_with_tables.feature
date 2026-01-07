Feature: LoanApplicationBackOffice

  As a loan application back office employee
  I want to be able to process incoming loan requests
  So we can communicate the results to our customer in a timely manner

  Scenario: Multiple pending loan applications for a customer can be approved at once
    Given the loan application workload contains the following applications:
      | applicant | amount | status    |
      | Susan     | 1000   | Submitted |
      | Susan     | 2000   | Submitted |
      | John      | 1000   | Submitted |
    When the loan applications for Susan are approved
    Then the loan application workload will contain the following applications:
      | applicant | amount | status    |
      | Susan     | 1000   | Approved  |
      | Susan     | 2000   | Approved  |
      | John      | 1000   | Submitted |