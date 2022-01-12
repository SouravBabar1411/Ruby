    @bal=100000
    @amt
    while true
    puts "choose operation"
    puts "1.Withdraw"
    puts "2.Deposite"
    puts "3.Balance"
    puts "4.exit"
    n = gets.chomp.to_i
    case n
when 1
    puts "enter amount to withdraw"
    @amt = gets.chomp.to_i
    @bal = @bal+@amt
    puts "Amount credited succesfully"
when 2 
    puts "enter amomnt to Deposite"
    @amt = gets.chomp.to_i
    if(@amt<=@bal)
        puts "plz collect cash"
        @bal = @bal-@amt
    else
        puts "Invalid  amt"
    end
when 3
    puts "Your account balance is: #{@bal}"
when 4
    break
else
    puts "default"
end
end