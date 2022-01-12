puts "enter array size"
s = gets.chomp.to_i
ar = Array.new(s)
puts "enter array elemets"
for i in 0..ar.size-1
    ar[i]=gets.chomp.to_i
end
while true
puts "+++++++++++"
puts "1.Assendig Array"
puts "2.Reverse Array"
puts "3.Delete Array element"
puts "4.Push Array element"
puts "5.First Array element"
puts "6.Last Array element"
puts "7.Max Array element"
puts "8.Min Array element"
puts "9.Map for cheking even"
puts "10.Insert method"
puts "11.Drop method"
puts "12.Join"
puts "13.Exit"
puts "enter your choice"
choice = gets.chomp.to_i
case choice
when 1
    puts "your array is: #{ar}\n"
    puts "after dessending"
    for i in 0..ar.size-1
        for j in j=i+1..ar.size-1
            if ar[i]>ar[j]
                @temp=ar[i]
                ar[i]=ar[j]
                ar[j]=@temp
            end
        end
    end
    for i in 0..ar.size-1
        print " #{ar[i]}"  
    end
    puts ""
when 2
    puts "your array is: #{ar}\n"
    puts "reverse array is: #{ar.reverse()}\n\n"#retrun array in reverse order
when 3
    puts "your array is: #{ar}\n"
    puts "Enter element which element u want to delete"
    d = gets.chomp.to_i
    puts ar.delete(d){"no such element found"}#delete element from last position
when 4
    puts "your array is: #{ar}\n"
    puts "enter array element which u want to add"
    a = gets.chomp.to_i
    ar.push(a)#add element from start position
    puts "your array is: #{ar}\n"
when 5
    puts "your array is: #{ar}\n"
    puts "first element is #{ar.first}"#retrun first array element
when 6
    puts "your array is: #{ar}\n"
    puts "last element is #{ar.last}"#retrun last array element
when 7
    puts "your array is: #{ar}\n"
    puts "Max array element is #{ar.max()}"#retrun max array element
when 8
    puts "your array is: #{ar}\n"
    puts "Min array element is #{ar.min()}"#retrun min array element
when 9
    puts "your array is: #{ar}\n"
    puts "map for cheking even: #{ar.map {|x| x.even?}}\n"#chekcks the conditon and retrun  true/flase 
when 10
    puts "your array is: #{ar}\n"
    puts "enter index of array"
    i = gets.chomp.to_i
    puts "enter value "
    v = gets.chomp.to_i
    puts "insert :#{ar.insert(i,v)}"#inserting element depending upon index
when 11
    puts "your array is: #{ar}\n"
    puts "enter how many elements u want to drop"
    el = gets.chomp.to_i
    puts "Drop :#{ar.drop(el)}\n"#delete element based on number of index
when 12
    puts "your array is: #{ar}\n"
    puts "enter separator"
    sy = gets.chomp
    puts "Join :#{ar.join(sy)}\n"#seperate array element with seprator what u provide
when 13
    break
else 
    puts "plz enter correct choice"
end
end

