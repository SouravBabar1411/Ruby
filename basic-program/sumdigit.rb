puts "enter number to cheak sum of digit"
n = gets.chomp.to_i
sum = 0
r = 0
while(n!=0)
r = n%10
sum = sum+r
n = n/10
end
puts "sum of digit is #{sum}"
