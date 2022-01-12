
=begin 
Ruby program to check whether the given number is 
prime or not.
=end

puts "Enter the number:"
num=gets.chomp.to_i
flage=false
if (num==0)
	puts "0 is not prime"
else
	
	i=2
	while(i<num)
		if (num%i==0)
		   flage=true
		end
		i+=1
	end
	
end
	if (flage==true)
		puts "#{num} is not a prime number"
	else
		puts "#{num} is prime number"
	end
