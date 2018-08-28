initial_balance = File.read("/home/david/Desktop/Ruby/Programs/test2.txt").to_i
history = [0]


loop do
  puts "Welcome to the banking app"
  puts "What would you like to do (Type number below to continue)"
  puts "Your current balance $#{initial_balance}"
  puts "Options: 1. Deposit Money"
  puts "         2. Withdraw Money"
  puts "         3. History"
  puts "         4. Exit"

  
  selection = gets.to_i
  if selection == 1
    puts "Please enter your deposited amount"
    deposit_money = gets.to_f
      if deposit_money == 0
      puts "Error Please input a number"
      else
      initial_balance = initial_balance + deposit_money
      history << initial_balance
      puts "Your balance is $#{initial_balance}"
      File.write("/home/david/Desktop/Ruby/Programs/test2.txt", "#{initial_balance}")
      end

  elsif selection == 2
  puts "Please enter your selected amount to withdraw"
  withdraw_money = gets.to_f
      if withdraw_money == 0
      puts "Error Please input a number"
      elsif withdraw_money <= initial_balance
      initial_balance = initial_balance - withdraw_money
      history << initial_balance
      puts "Your balance is $#{initial_balance}"
      File.write("/home/david/Desktop/Ruby/Programs/test2.txt", "#{initial_balance}")
      else
      puts "Withdraw amount is higher than your balance"
      end
  
  elsif selection == 3
  puts "Transaction History"
  puts "your transaction history: #{history}"

  elsif selection == 4
    system("clear")
    exit
  
  else 
    puts "Please make a valid selection"
    system("clear")
  end


end

                               
