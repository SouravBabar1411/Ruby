class Demos
    def get_data
        puts "enter your choice"
        puts "1.number of count of 5 in array"
        puts "2.checking array contain 7 or not"
        puts "3.checking arrray contain for assending"
        puts "4.checking last digit"
        puts "5.checking number is 11 or diff is 11"
        puts "6.checking number is whithin 2 or multiple of 10"
        puts "7.checking number between range 10..99"
        puts "8.cheking 2 numbers are equl or not"
        puts "9.cheking number is 17"
        puts "10.conditons for mod"
        choice = gets.chomp.to_i
        case choice
        when 1
            arr =[1,2,5,5,3,5]
            count=0
            for i in 0...arr.length
                if arr[i]==5
                    count = count+1
                end
            end
            puts "number of count is: #{count}"
        when 2
            def check_array(array)
                count=0
                for i in 0..array.length
                    if array[i]==7
                        count=count+1
                    end
                end
                if count>=1
                    return 1
                else
                    return 0
                end
            end
            puts check_array([1,7,8,9,3])
            puts check_array([1,0,8,9,3])
        when 3
            def array_checks(nums)
                idx = 0
                while idx < nums.length-2
                    if nums[idx..idx+2] == [10,20,30]
                        return true
                    end
                    idx += 1
                end
                return false
            end
            puts array_checks([10, 20, 30, 40, 50])
            puts array_checks([0, 10, 20, 30, 90])
            puts array_checks([10, 20, 50, 30, 70])
        when 4
            def check_digit(a,b)
                if a%10==b%10
                    return true
                else 
                    return false
                end
            end
            print "enter 2 digit "
            a = gets.chomp.to_i
            b = gets.chomp.to_i
            puts check_digit(a,b)
        when 5
            def check_element(a,b)
                if a==11 || b==11 || a-b==11 || a+b==11
                    return true
                else
                    return false
                end
            end
            print "enter 2 element "
            a = gets.chomp.to_i
            b = gets.chomp.to_i
            puts check_element(a,b)
        when 6
            def check_number(num)
                return num % 10 <= 2 || num % 10 >= 8
            end
            print "enter number "
            num = gets.chomp.to_i
            puts check_number(num)
        when 7 
            def digitCheck
                print "Enter first number in range 10..99 :"
                n1 = gets.chomp.to_i 
                print "Enter second number in range 10..99 :"
                n2 = gets.chomp.to_i
                digitn1 = n1%10
                digitn2 = n2%10
                x = n1/10
                y = n2/10
                return(digitn1==y || digitn2==x || x==y || digitn1==digitn2)
            end
            puts digitCheck
        when 8
            def check_num(a, b, c)
                if a==b && b==c
                    return 0
                elsif a==b
                    return c
                elsif a==c
                    return b
                elsif b==c
                    return a
                else
                    return a+b+c
                end
            end
            print "enter 3 number"
            a = gets.chomp.to_i
            b = gets.chomp.to_i
            c = gets.chomp.to_i
            print check_num(a, b, c),"\n"
        when 9
            def sum_Numbers1
                print "Enter first number :"
                n1 = gets.chomp.to_i 
                print "Enter second number :"
                n2 = gets.chomp.to_i
                print "Enter third number :"
                n3 = gets.chomp.to_i 

                if (n1==17 || n2==17 || n3 == 17)
                    return 0
                elsif
                    ans = n1+n2+n3 
                    return ans 
                end
            end
            puts sum_Numbers1
        when 10
            def conditional_Operation
                print "Enter first number :"
                n1 = gets.chomp.to_i 
                print "Enter second number :"
                n2 = gets.chomp.to_i
                ans1 = n1%5
                ans2 = n2%5
                if n1==n2 
                    return 0
                elsif ans1==ans2
                if n1>n2
                    return n2
                 else
                    return n1 
                end
                elsif n1>n2
                    return n1
                else 
                    return n2 
                end 
            end
            puts conditional_Operation
        else
            puts "enter correct choice"
        end
    end
end 
obj = Demos.new
obj.get_data