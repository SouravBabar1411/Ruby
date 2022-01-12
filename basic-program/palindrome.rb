puts "ENTER ANY NUMBER TO CHEAK PALINDROME OR NOT"
n = gets.chomp.to_i
temp = n
rno = 0
r = 0
while(n!=0)
r = n%10
rno = (rno*10)+r
n = n/10
end
if(rno==temp)
puts "Number is palindrome"
else
puts "Number is not palindrome"
end

