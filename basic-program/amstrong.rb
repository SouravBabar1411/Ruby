puts "enter number to cheak amstrong or not"
n=gets.chomp.to_i
temp=n
sum=0
rno=0
while(n!=0)
rno=n%10
sum=sum+(rno*rno*rno)
n=n/10
end
if(temp==sum)
puts "#{temp} number is amstrong"
else
puts "#{temp} number is not amstrong"
end

