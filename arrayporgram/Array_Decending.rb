puts "enter array size"
size = gets.chomp.to_i
ar = Array.new(size)
puts "enter #{size} array elements"
for i in 0.. size-1
    ar[i] = gets.chomp.to_i
end
@temp
for i in 0.. size-1 
    for j in i+1.. size-1
        if ar[i]<ar[j]
            @temp=ar[i]
            ar[i]=ar[j]
            ar[j]=@temp
        end
    end
end
puts "decending array is "
for i in 0.. size-1
   puts ar[i]
end