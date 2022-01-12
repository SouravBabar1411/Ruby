class Animal
    def declare
        a=38
        b=93
        puts "parent class"
    end
end
class Sum < Animal
    def Task
        puts "I am  a child class"
        sum = a+b
        puts $sum
        end
end
obj = Sum.new
obj.declare
obj.Task