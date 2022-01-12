class Factorial
    def calculate
    fact = 1
    puts "enter number to cheak factorial"
    n = gets.chomp.to_i
    for i in 1..n do 
       fact = fact*i
    end
    puts fact
end
end
facts = Factorial.new
facts.calculate
    