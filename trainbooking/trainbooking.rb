class Train
    def signup_info
        puts
        puts "+++++++WELCOME TO TICKET BOOKING SYSTEM++++++"
        puts
        print "ENTER YOUR USERNAME: "
        @username=gets.chomp.to_i
        puts
        print "ENTER YOUR PASSWORD: "
        @password=gets.chomp.to_i
        puts
        print "ENTER CONFIRM PASSWORD: "
        @password1=gets.chomp.to_i
    end
    def casee_statemet
        if @password==@password1
            puts
            puts "Login Succesfully.....!"
        else
            puts 
            puts "password did not match Try again...."
            exit
        end
        while true
            print "\n1. Book Ticket\n"
            puts ".................."
            print "2. View Ticket\n"
            puts ".................."
            print "3. Cancel Ticket\n"
            puts ".................."
            print "4. Exit From Application\n"
            puts ".................."
            puts 
            print "Enter Your Choice :"
            choice = gets.chomp.to_i 
            case choice
            when 1
                booking_info
            when 2
                show_ticket
            when 3
                cancel_ticket
            when 4
                exit
            else
                puts "Plzz enter valid choice"
            end
        end
    end
    def booking_info
        file = File.open("traindetails.txt" , "r")
        puts
        puts file.read() 
        file.close()
        puts
        puts "Details of available trains"
        puts
        print "ENTER STARTING POINT: "
        @start = gets.chomp
        puts
        print "ENTER DESTINATION POINT : "
        @end = gets.chomp
        puts
        print "ENTER DAY OF JOURNERY: "
        @day = gets.chomp.to_i
        puts
        print "ENTER MONTH OF JOURNERY: "
        @month = gets.chomp.to_i
        puts
        puts "======enter passanger details========"
        puts
        print "ENTER HOW MANY TICKET YOU WANT: "
        @ticket_number=gets.chomp.to_i
        puts
        print "ENTER PASSANGER NAME: "
        @name = gets.chomp.to_i
        puts
        print "ENTER YOUR MOBILE NUMBER: "
        @m_number = gets.chomp.to_i
        puts
        print "ENTER LOGIN USENAME AND PASSWORD TO BOOK THE TICKET:"
        puts
        print "username: "
        @log_username = gets.chomp.to_i
        puts
        print "password: "
        @log_password = gets.chomp.to_i
        if @password==@log_password && @log_username==@username
            puts
            puts "Ticket Booked Succesfully...!"
        else
            puts
            puts "Sorry...Username or Password not matched booking faild...!"
            exit
        end
        puts
        $ticketinfo = {"starting-point" => @start,"destination-point"=>@end,"day"=>@day,"month"=>@month,"ticket_number"=>@ticket_number,"passanger-Name"=>@name,"Mobile-Number"=>@m_number}
            File.open("TicketBooking.txt" , "w") do |file|
            file.write($ticketinfo)
        end
    end
    def cancel_ticket
        puts
        puts "ENTER USERNAME AND PASSWORD TO CANCEL THE TICKET:"
        print "username: "
        @cancel_username = gets.chomp.to_i
        puts
        print "password: "
        @cancel_password = gets.chomp.to_i
        if @password==@cancel_password || @cancel_username==@username
            puts
            file = File.open("TicketBooking.txt" , "r+")
            File.delete(file)
            puts "Ticket Canceled Succesfully...!"
        else
            puts
            puts "Sorry...Username or Password invalid...!"
            exit
        end
    end
    def show_ticket
        if(File.file?("TicketBooking.txt")) 
        puts
        puts "----------------"
        puts "Starting point: #{@start}"
        puts
        puts "Destination point: #{@end}"
        puts
        puts "Number of tickets: #{@ticket_number}"
        puts
        puts "Day of Journay: #{@day}"
        puts
        puts "Month of Journay: #{@month}"
        puts
        puts "Name of passanger: #{@name}"
        puts
        puts "Mobile Number: #{@m_number}"
        puts "----------------"
        else 
            puts
            puts "No such ticket available...!"
        end
    end
end
tobj = Train.new
tobj.signup_info
tobj.casee_statemet