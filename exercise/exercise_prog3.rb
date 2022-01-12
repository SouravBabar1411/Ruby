class Excercise3
    def get_disp
        puts "Enter your choice"
        puts "1.Hashesh"
        puts "2.Pattern"
        puts "3.Leap Year"
        puts "4.Cheking String with java"
        puts "5.Cheking String with ps"
        puts "6.Return value which is near to 10"
        puts "7.Checking the range"
        puts "8.Largest between 20 and 30"
        puts "9.Cheking string contain i or not"
        puts "10.String pattern"
        choice = gets.chomp.to_i
        
        case choice
        when 1
            student_mark = Hash.new
            student_mark = {literature:74,science:89,maths:91}
            totalmark=0
            student_mark.each do |key,value|
                totalmark=totalmark+value
            end
            puts "total mark is: #{totalmark}"
        when 2
            puts "*"*20
            puts "#"*20
            puts "@"*20
        when 3 
            puts "enter year to check leap year or not "
            year = gets.chomp.to_i
            if(year%100==0)
                if(year%4000==0)
                    puts "It is a centuray leap year"
                else
                    puts "Year is centuray but not leap year"
                end
            elsif year%4==0
                puts "It is non centuray leap year"
            elsif
                puts "Year is not leap year"
            end
        when 4
            puts "enter String "
            str = gets.chomp
            if str[1..4]=="java"
                puts str[5..str.length-1]
            else
                puts str
           end
        when 5 
            puts "enter String "
            str = gets.chomp
            if str[0]=='p' && str[1]=='s'
                puts str[0..1]
            else
                puts 
            end
        when 6
            def get(a,b)
                if(a>b)
                    return a 
                end
                if (b>a)
                    return b
                end
            end
            puts get(7,3)
            puts get(2,9)
        when 7
            def test_int(a, b)
                return  (((a >= 10 && a <= 20) && (b >= 10 && b <= 20)) ||
                 ((a >= 20 && a <= 30) && (b >= 20 && b <= 30)));
             end
             puts test_int(10, 15)
             puts test_int(6, 9)
             puts test_int(22, 30)
        when 8
            def check_numbers(num1,num2)
                if (num1>=20 && num1<=30) || (num2>=20 && num2<=30)
                    if num1>num2
                        puts "#{num1}"
                    elsif 
                        puts "#{num2}"
                    else
                        return 0
                    end
                end
            end
            puts "Enter two numbers:"
            num1=gets.chomp.to_i
            num2=gets.chomp.to_i
            puts check_numbers(num1,num2)
        when 9
            def check_string(str)
                return str.include? "i"
            end
            puts "Enter a string:"
            str=gets.chomp 
            puts checkstring(str)
        when 10
            def create_string(str)
                str1 = ""
                str.split("").each_with_index do |char,index|
                    str1+=char unless  index%2==1    
                end
                return str1
            end
            puts "Enter a string:"
            str=gets.chomp 
            puts create_string(str)
        else
            puts "enter correct choice"
        end
    end
end
obj = Excercise3.new
obj.get_disp