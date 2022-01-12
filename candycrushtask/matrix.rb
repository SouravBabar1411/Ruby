    arr=[[1,1,1,0,3,5],[0,9,2,2,0,6],[1,0,4,3,3,0],[2,8,9,0,9,0],[2,0,0,4,9,6],[0,8,9,6,0,6]]
    for i in 0...arr.size
        for j in 0...arr.size
            print "#{arr[i][j]}    "
        end
        puts
        puts
    end
puts "Enter value for matching element"
value=gets.chomp.to_i
puts "Enter index row:"
r=gets.chomp.to_i
puts "Enter index col:"
c=gets.chomp.to_i
if arr[r][c]==0
arr[r][c]=value
for i in 0...arr.size
    for j in 0...arr.size
        print "#{arr[i][j]}    "
    end
    puts
    puts
end
else
    puts "enter value in for where 0 available"
end
    if arr[r][c] ==arr[r][c-1] &&arr[r][c] ==arr[r][c-2]
    arr[r][c] = 0
    arr[r][c-1] = 0
    arr[r][c-2] = 0
    puts "your array is:"
    for i in 0...arr.size
        for j in 0...arr.size
            print "#{arr[i][j]}    "
        end
        puts
        puts
    end

elsif arr[r][c]==arr[r][c+1] &&arr[r][c+1]==arr[r][c+2] &&arr[r][c+2]==arr[r][c+3] 
    arr[r][c] = 0
    arr[r][c+1] = 0
    arr[r][c+2] = 0
    arr[r][c+3] = 0
    puts "your array is:"
    for i in 0...arr.size
        for j in 0...arr.size
            print "#{arr[i][j]}    "
        end
        puts
        puts
    end
elsif arr[r][c]==arr[r-1][c] && arr[r][c]==arr[r+1] && arr[r-1][c]==arr[r+1] 
    arr[r][c] = 0
    arr[r-1][c]= 0
    arr[r+1][c] = 0
    puts "your array is:"
    for i in 0...arr.size
        for j in 0...arr.size
            print "#{arr[i][j]}    "
        end
        puts
        puts
    end
elsif arr[r][c]==arr[r-1][c] &&arr[r-1][c]=arr[r-2][c] &&arr[r][c]=arr[r-2][c]
    arr[r][c] = 0
    arr[r-1][c]= 0
    arr[r-2][c] = 0
    puts "your array is:"
    for i in 0...arr.size
        for j in 0...arr.size
            print "#{arr[i][j]}    "
        end
        puts
        puts
    end

elsif arr[r]
    arr[r][c] = 0
    arr[r+1][c]= 0
    arr[r-1][c] = 0
    puts "your array is:"
    for i in 0...arr.size
    for j in 0...arr.size
        print "#{arr[i][j]}    "
    end
    puts
    puts
end

        
elsif arr[r][c] ==arr[r][c] &&arr[r][c] ==arr[r][c+1] &&arr[r][c+1] ==arr[r][c+2] &&arr[r][c+2] ==arr[r][c+3] &&arr[r][c+3] ==arr[r][c+4] &&arr[r][c+4] ==arr[r][c+5]
        arr[r][c] = 0
        arr[r][c+1] = 0
        arr[r][c+2] = 0
        arr[r][c+3] = 0
        arr[r][c+4] = 0
        arr[r][c+5] = 0
        puts "your array is:"
        for i in 0...arr.size
            for j in 0...arr.size
                print "#{arr[i][j]}    "
            end
            puts
            puts
        end
            

    elsif arr[r][c]==arr[r][c+1] &&arr[r][c]==arr[r][c-1] &&arr[r][c-1]==arr[r][c-2]
        arr[r][c] = 0
        arr[r][c+1] = 0
        arr[r][c-1] = 0
        arr[r][c-2] = 0
        puts "your array is:"
        for i in 0...arr.size
            for j in 0...arr.size
                print "#{arr[i][j]}    "
            end
            puts
            puts
        end

    elsif arr[r][c]==arr[r][c-1] &&arr[r][c-1]==arr[r][c-2] &&arr[r][c-2]==arr[r][c-3] &&arr[r][c-3]==arr[r][c-4]  &&arr[r][c]=arr[r][c-4]
            arr[r][c] = 0
            arr[r][c-1] = 0
            arr[r][c-2] = 0
            arr[r][c-3] = 0
            arr[r][c-4] = 0
            puts "your array is:"
            for i in 0...arr.size
                for j in 0...arr.size
                    print "#{arr[i][j]}    "
                end
                puts
                puts
            end

    elsif arr[r][c]== arr[r-1][c] && arr[r][c]==arr[r+1][c]
           arr[r][c] = 0
           arr[r-1][c]= 0
           arr[r+1][c] =0
           puts "your array is:"
           for i in 0...arr.size
            for j in 0...arr.size
                print "#{arr[i][j]}    "
            end
            puts
            puts
        end
        
    elsif arr[r][c]==arr[r][c+1] && arr[r][c] == arr[r][c-1]
          arr[r][c] = 0
          arr[r][c+1] = 0
          arr[r][c-1] = 0
          puts "your array is:"
          for i in 0...arr.size
            for j in 0...arr.size
                print "#{arr[i][j]}    "
            end
            puts
            puts
        end

    elsif arr[r][c] == arr[r+1][c] && arr[r+1][c] == arr[r+2][c] && arr[r][c]==arr[r+2][c]
          arr[r][c] = 0
          arr[r+1][c] = 0
          arr[r+2][c] = 0
          puts "your array is:"
          for i in 0...arr.size
            for j in 0...arr.size
                print "#{arr[i][j]}    "
            end
            puts
            puts
        end   
   
    elsif arr[r][c] ==arr[r-1][c] && arr[r-1][c] == arr[r-2][c] && arr[r-2][c] == arr[r-3][c] && arr[r-3][c] == arr[r-4][c] && arr[r-4][c] == arr[r-5][c]
        arr[r][c] = 0
        arr[r-1][c] = 0
        arr[r-2][c] = 0
        puts "your array is:"
        for i in 0...arr.size
            for j in 0...arr.size
                print "#{arr[i][j]}    "
            end
            puts
            puts
        end

    elsif arr[r][c] ==arr[r-1][c] && arr[r][c] == arr[r-2][c]
        arr[r][c] = 0
        arr[r-1][c] = 0
        arr[r-2][c] = 0
        puts "your array is:"
        for i in 0...arr.size
            for j in 0...arr.size
                print "#{arr[i][j]}    "
            end
            puts
            puts
        end
else
    puts "No 0 and zero elements in array."
end
