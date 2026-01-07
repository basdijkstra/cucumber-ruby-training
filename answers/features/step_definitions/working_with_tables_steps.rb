Given('the loan application workload contains the following applications:') do |table|

  @applications = table.hashes.map do |row|
    LoanApplication.new(
      applicant: row['applicant'],
      amount: row['amount'].to_i,
      status: row['status']
    )
  end

  @applications.each(&:print_info)

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