Given('John is an active ParaBank customer') do

end

Given('they have the following accounts') do |table|
  @accounts = table.hashes.map do |row|
    Account.new(
      type: row['type'],
      balance: row['balance'].to_i,
      shared_with: row['shared_with']
    )
  end

  @accounts.each(&:print_info)
end