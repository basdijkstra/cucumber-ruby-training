class LoanApplication

  attr_accessor :applicant, :amount, :status

  def initialize(applicant:, amount:, status:)
    @applicant = applicant
    @amount = amount
    @status = status
  end

  def print_info
    puts("Loan application from #{@applicant} for $#{@amount} has status #{@status}")
  end
end