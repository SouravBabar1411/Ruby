class Instance_method
    def get_info
        puts "enter name"
        $sname = gets.chomp
        puts "enter id"
        $sid = gets.chomp.to_i
    end
    def show
        puts "Your name is: #{$sname}"
        puts "Your id is: #{$sid}"
    end
end
ob = Instance_method.new
ob.get_info
ob.show