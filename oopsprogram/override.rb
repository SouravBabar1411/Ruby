class OverRide
    def showing 
        puts "I am the OverRide show"
    end
end
class Example < OverRide
    def showing
        puts "I am the Example show"
    end
end
ex = Example.new
ex.showing