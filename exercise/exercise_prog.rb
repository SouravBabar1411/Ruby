class Sample
    def versions
        puts "Ruby Version is: "+RUBY_VERSION
        puts "Patch Level is: "+RUBY_PATCHLEVEL.to_s
    end

    def date_time
        require 'date'
        current_time = DateTime.now
        cdt = current_time.strftime "%d/%m/%Y %H:%M:%S"
        puts "Current Date and Time: "+cdt
    end

    def pattern
        str="a"
        for i in 0..5
            for j in 0..i
                puts str
            end
            puts
        end
    end

    def area_parameter
        puts "enter radius of circle "
        radius = gets.chomp.to_i
        parameter = (2*3.14*(radius*radius))
        area = 3.14*(radius*radius)
        puts "parameter of cricle is: #{parameter} "
        puts "area of cricle is: #{area}"
    end

    def string_check
        puts "enter a string "
        str = gets.chomp
        puts str.start_with?("if")
    end

    def revrse_string
        puts "enter first name "
        fname=gets.chomp
        puts "enter last name "
        lname=gets.chomp
        puts "#{fname} #{lname}".split.reverse.join(" ")
    end

    def file_extension
        file = "/home/dell/Documents/newSample.txt"
        filename = File.basename(file)
        puts "file name is: #{filename}"
        fbname = File.basename(file,"txt")
        puts "file basename is: #{fbname}"
        fext = File.extname(file)
        puts "file extension is: #{fext}"    
    end

    def range_cheking(a,b)
        return ((a >= 20 && a <= 30) || (b >= 20 && b <= 30))
    end

    def range2_checking(a, b)
        return (((a >= 1 && a <= 10) && !(b >= 1 && b <= 10)) ||
             (!(a >= 1 && a <= 10) && (b >= 1 && b <= 10)));	
     end

    def switch_case
        puts "enter your choice"
        puts "1.Version and Patch Level"
        puts "2.Date and Time"
        puts "3.Pattern"
        puts "4.Area and Parameter of circle"
        puts "5.String check"
        puts "6.Revrse"
        puts "7.Extension"
        puts "8.Range"
        choice = gets.chomp.to_i
        case choice
            when 1
                 versions
            when 2
                date_time
            when 3
                pattern
            when 4
                area_parameter
            when 5
                string_check
            when 6
                revrse_string
            when 7
                file_extension
            when 8
                puts range_cheking(39,39)
                puts range_cheking(20,28)
            when 9
                 puts range2_checking(1, 12)
                 puts range2_checking(10, 15)
                 puts range2_checking(11, 25)
            else
                puts "enter correct choice"
            end   
    end
end
s =
 Sample.new
s.switch_case