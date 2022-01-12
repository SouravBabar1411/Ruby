class Sample
    def get_data
        puts "enter your choice"
        puts "1.String multyline"
        puts "2.Adding strign to front"
        puts "3.String pattern"
        puts "4.Volume of sphere"
        puts "5.replacing last and first charcter in string"
        puts "6.Age"
        puts "7.Number differnce between 33 and multiplication"
        puts "8.maximum number"
        puts "9.cheking number equlity with 20"
        puts "10.greater of 3 numbers"
        choice = gets.chomp.to_i
        case choice
        when 1
            puts %/
                  sample string:
                  a string that you "don't" have to escape
                  this
                  is a .......multi-line
                  herdoc string example-------->
                 /
        when 2
            def if_string(str)
                str[0, 3] == "if " ? str : "if " << str 
            end
            print if_string("hi else"),"\n" 
            print if_string("else"),"\n"
        when 3
            str ="abc"
            i=0
            while i<=3
                puts str
                puts str*2
                i+=1
            end
        when 4
            print "enter radius of circle: "
            radius = gets.chomp.to_i
            volume_shpere = ((4/3)*3.14*(radius*radius*radius))
            puts "Volume of shpere is: #{volume_shpere}"
        when 5
            print "enter one string: "
            str = gets.chomp
            size=str.length
            temp=str[0]
            str[0]=str[size-1]
            str[size-1]=temp
           puts str
        when 6
            print "enter your age "
            age = gets.chomp.to_i
            if age<=18
                puts "minor"
            else
                puts "not minor"
            end
        when 7
            print "enter any number: "
            number = gets.chomp.to_i
            differnce = number-33
            differnce_double = 2*differnce
            puts "Diffrence is: #{differnce}"
            puts "Double diffrence is: #{differnce_double}"
        when 8
            print "enter value for a "
            a = gets.chomp.to_i
            print "enter value for b "
            b = gets.chomp.to_i
            if a>b 
                puts "#{a} is greater" 
            elsif a==b
                puts "both are equle"
            elsif
                puts "#{b} is greater"
            end
        when 9
            def get(a,b)
                return a==20 || b==20 || a+b==20
            end
            print "enter two value "
            a=gets.chomp.to_i
            b=gets.chomp.to_i
            puts get(a,b)
        when 10
            print "enter 3 number "
            a = gets.chomp.to_i
            b = gets.chomp.to_i
            c = gets.chomp.to_i
            if a>b && a>c 
                puts "#{a} is greater"
            elsif b>a && b>c 
                puts "#{b} is greater"
            elsif
                puts "#{c} is greater"
            end
        else
            puts "enter correct choice"
        end
    end
end
s = Sample.new
s.get_data