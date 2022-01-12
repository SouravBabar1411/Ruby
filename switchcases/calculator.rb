puts "enter two number to perform opration"
n1=gets.chomp.to_i
n2=gets.chomp.to_i
puts "enter your choice"
puts "1.Additon"
puts "2.Substraction"
puts "3.Multiplicatin"
n = gets.chomp.to_i
case n
when 1
    result = n1+n2
    puts "sum is #{result}"
when 2
    result = n1-n2
    puts "sub is #{result}"
when 3
    result = n1*n2
    puts "mul is #{result}"
else
    puts "default"
end