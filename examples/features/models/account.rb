class Account

  attr_accessor :type, :balance, :shared_with

  def initialize(type:, balance:, shared_with:)
    @type = type
    @balance = balance
    @shared_with = shared_with
  end

  def print_info
    puts("Account with type '#{@type}' and balance $#{@balance} is shared with #{@shared_with}")
  end

end