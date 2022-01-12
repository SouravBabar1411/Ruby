ar =[[1,0,1],[0,3,3],[7,7,0]]
puts "Your array is:"
for i in 0...ar.size
    for j in 0...ar.size
        print "#{ar[i][j]}    "
    end
    puts
    puts
end
puts "Make a array zero"
while true
print "enter row number "
r =gets.chomp.to_i
print "enter col number "
c = gets.chomp.to_i
puts "enter matching value"
print "enter value "
value = gets.chomp.to_i
if ar[r][c]==0
    ar[r][c]=value
else
    puts "not empty space"
end
puts "Your array is:"
for i in 0...ar.size
    for j in 0...ar.size
        print "#{ar[i][j]}    "
    end
    puts " "
end
if ((value==ar[r][c] && value==ar[r][c+1] && value==ar[r][c+2]) || (value==ar[r][c] && value==ar[r][c-1] &&value==ar[r][c-2]))
    ar[r][c]=0
    ar[r][c+1]=0
    ar[r][c+2]=0
    ar[r][c]=0
    ar[r][c-1]=0
    ar[r][c-2]=0
    puts "Your array is:"
    for i in 0...ar.size
    for j in 0...ar.size
        print "#{ar[i][j]}    "
    end
    puts ""
    end
 elsif((value==ar[r][c] && value==[r+1][c]) || (value==ar[r][c] && value==ar[r-1][c]))
        ar[r][c]=0
        ar[r+1][c]=0
        ar[r][c]=0
        ar[r-1][c]=0
        puts "Your array is:"
        for i in 0...ar.size
        for j in 0...ar.size
            print "#{ar[i][j]}   "
        end
        puts ""
        end
    end
    $count=0
    for i in 0...ar.size
        for j in 0...ar.size
            if ar[i][j]==0 
                $count=$count+1
        end
    end
end
    #puts $count
    if $count==9
        puts "finally task compeleted..!"
        exit
    end
end
