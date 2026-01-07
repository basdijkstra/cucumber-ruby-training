Given('the loan application workload contains the following applications:') do |table|

  # Implement this step definition by
  #   - Initializing a new @applications instance variable
  #   - Adding a LoanApplication object for every table row
  #   - Mapping the values in the columns to the corresponding object property
  #   - Converting strings to integers where appropriate
  # After the loop, call print_info() on every LoanApplication object in @applications
  #   to see the contents

end

When('the loan applications for {word} are approved') do |name|

  @applications.each do |application|
    if application.applicant == name
      application.status = 'Approved'
    end
  end

end

Then('the loan application workload will contain the following applications:') do |table|

  actual = @applications.map do |application|
    {
      'applicant' => application.applicant,
      'amount' => application.amount.to_s,
      'status' => application.status,
    }
  end

  table.diff!(actual)

end