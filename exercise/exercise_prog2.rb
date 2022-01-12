class Prog
    def get_data
        puts "enter your choice"
        puts "1.Cheack number within range or not"
        puts "2.Sum of 2 digit with cheking eqaulity"
        puts "3.Repative loop"
        puts "4.adding string last char with 1st and last position"
        puts "5.cheking temprature"
        puts "6.Upto iteraor"
        puts "7.Odd number"
        puts "8.Even number"
        puts "9.Array element"
        puts "10.cheking last digit same or not"
        choice = gets.chomp.to_i
        case choice
        when 1
            def show(number)
                return ((number<=100 && number>=10) || (number>=101 &&number<=200))
            end
            print "enter any number "
            number = gets.chomp.to_i 
            puts show(number)
        when 2
            print "enter two number "
            num1 = gets.chomp.to_i
            num2 = gets.chomp.to_i
            if num1==num2
                puts "sum of 2 digit is: #{num1+num2}"
                puts "double sum is: #{2*(num1+num2)}"
            else
                puts "sum of 2 digit is: #{num1+num2}"
            end
        when 3
             9.times do
                 puts "Ruby exercise"
             end
        when 4
            print "enter string "
            str = gets.chomp
            size = str.length
            last = str[size-1]
            puts last
            puts "#{last}#{str}#{last}"
        when 5
            def get_temp(temp,temp1)
                return temp<0 && temp1>100
            end
            print "enter two tempratures "
            temp = gets.chomp.to_i
            temp1 = gets.chomp.to_i
            puts get_temp(temp,temp1)
        when 6
            34.upto(41) do |n|
                puts n 
            end
        when 7
            puts "odd number between 1 to 10 is"
            for i in 1..10
                if i%2!=0
                    puts i
                end
            end
        when 8
            puts "even number between 1 to 10 is"
            (1..10).each do |i|
                if i%2 == 0
                    puts i
                end
            end
        when 9
            array = ["Ruby",39,38.99,Time.now]
            array.each do |n| 
                puts n 
            end
        when 10
            def get_info(val,val1)
                return val%10==val1%10
            end
            print "enter 2 values "
            val=gets.chomp.to_i
            val1=gets.chomp.to_i
            puts get_info(val,val1)
        else
            puts "Plzz..enter correct choice"
        end
    end
end
obj = Prog.new
obj.get_data