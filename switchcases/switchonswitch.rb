
class Demo
    $result
    $i_p
    $a 
    $b
    def get
        puts "enter 2 values"
        $a = gets.chomp.to_i
        $b = gets.chomp.to_i
    end
    def Airthmatic
        if $i_p==1
            get
            $result = $a+$b
            puts "Addition is: #{$result}"
        elsif $i_p==2
            get
            $result = $a-$b
            puts "Substraction is: #{$result}"
        elsif $i_p==3
            get
            $result = $a*$b
            puts "Multiplication is: #{$result}"
        end
    end
end
puts "1.Airthmatic"
puts "2.Logical"
choice = gets.chomp.to_i
case choice
when 1
    puts "1.Addition(+)"
    puts "2.Substrction(-)"
    puts "3.Multiplication(*)"
    $i_p = gets.chomp.to_i
    d = Demo.new
    d.Airthmatic
else
    puts "Hi"
end