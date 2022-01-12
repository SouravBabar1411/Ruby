puts "enter size of array"
size = gets.chomp.to_i
array = Array.new(size)
puts "enter #{size} array elements"
for i in 0..size-1
    array[i]=gets.chomp.to_i
end
fl = array[0]
sl = array[0]
for i in 0..size-1
    if array[i]>fl
        fl=array[i]
    end
end
for i in 0..size-1
    if array[i]>sl && fl!=array[i]
        sl=array[i]
    end
end
puts "first large is #{fl}"
puts "second large is #{sl}"