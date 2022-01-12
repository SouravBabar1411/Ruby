class Candy
    $arr= [[4,4,0,0,3],[1,1,3,1,3],[2,1,2,8,0],[0,9,0,1,0],[1,1,0,8,9],[9,0,2,0,9],[9,0,2,8,0]]

    def show_array
        for i in 0...$arr.size
            for j in 0...$arr.size
                print "#{$arr[i][j]}\t"
            end
            puts
            puts
        end
    end
    def cheking_array
        puts "TRY TO MAKE THE ARRAY ZERO.." 
        while 1
            print "Enter matching value:"
            value = gets.chomp.to_i 
            print "enter row number :"
            row = gets.chomp.to_i
            print "Enter column number :"
            column = gets.chomp.to_i  
            if $arr[row][column] == 0 
                $arr[row][column] = value
                    
                if $arr[row][column]==$arr[row][column+1] && $arr[row][column]==$arr[row][column+2] && $arr[row][column]==$arr[row][column+3] 
                    puts 
                    $arr[row][column] = 0
                    $arr[row][column+1] = 0
                    $arr[row][column+2] = 0
                    $arr[row][column+3] = 0

                elsif $arr[row][column]==$arr[row][column-1] && $arr[row][column]==$arr[row][column+1] &&  $arr[row][column]==$arr[row][column+2] 
                    puts
                    $arr[row][column] = 0
                    $arr[row][column-1] = 0
                    $arr[row][column+1] = 0    
                    $arr[row][column+2] = 0

                elsif $arr[row][column]==$arr[row][column-1] && $arr[row][column]==$arr[row][column-2] && $arr[row][column]==$arr[row][column-3] 
                    puts
                    $arr[row][column] = 0
                    $arr[row][column-1] = 0
                    $arr[row][column-2] = 0
                    $arr[row][column-3] = 0
                    
                elsif $arr[row][column]==$arr[row][column-1] && $arr[row][column]==$arr[row][column+1] &&  $arr[row][column]==$arr[row][column-2] 
                    puts
                    $arr[row][column] = 0
                    $arr[row][column-1] = 0
                    $arr[row][column+1] = 0    
                    $arr[row][column-2] = 0

                elsif (($arr[row][column]==$arr[row][column-1] && $arr[row][column]==$arr[row][column+1]) || ($arr[row][column]==$arr[row][column+1] && $arr[row][column]==$arr[row][column+2] ))   
                    puts
                        $arr[row][column] = 0
                        $arr[row][column-1] = 0
                        $arr[row][column+1] = 0
                        $arr[row][column] = 0
                        $arr[row][column+1] = 0
                        $arr[row][column+2] = 0      
                
                elsif $arr[row][column]==$arr[row][column-1] && $arr[row][column]==$arr[row][column-2]
                    puts
                    $arr[row][column] = 0
                    $arr[row][column-1] = 0
                    $arr[row][column-2] = 0 

                elsif $arr[row][column]==$arr[row-1][column] && $arr[row][column]==$arr[row-2][column] && $arr[row][column]==$arr[row-3][column] 
                    puts
                    $arr[row][column] = 0
                    $arr[row-1][column] = 0
                    $arr[row-2][column] = 0
                    $arr[row-3][column] = 0

                elsif $arr[row][column]==$arr[row-1][column] && $arr[row][column]==$arr[row-2][column] && $arr[row][column]==$arr[row-3][column] && $arr[row][column]==$arr[row-4][column] 
                    puts
                    $arr[row][column] = 0
                    $arr[row-1][column] = 0
                    $arr[row-2][column] = 0
                    $arr[row-3][column] = 0
                    $arr[row-4][column] = 0   

                elsif $arr[row][column]==$arr[row-1][column] && $arr[row][column]==$arr[row+1][column] 
                    puts
                    $arr[row][column] = 0
                    $arr[row-1][column] = 0
                    $arr[row+1][column] = 0    
                    #$arr[row+2][column] = 0
                    
                elsif $arr[row][column]==$arr[row-1][column] &&  $arr[row][column]==$arr[row-2][column] && $arr[row][column]==$arr[row+1][column]  
                    puts
                    $arr[row][column] = 0
                    $arr[row-1][column] = 0
                    $arr[row+1][column] = 0    
                    $arr[row-2][column] = 0
                
                elsif (($arr[row][column]==$arr[row-1][column] && $arr[row][column]==$arr[row+1][column]) || ($arr[row][column]==$arr[row+1][column] && $arr[row][column]==$arr[row+2][column]))  
                    puts
                        $arr[row][column] = 0
                        $arr[row-1][column] = 0
                        $arr[row+1][column] = 0
                        $arr[row][column] = 0
                        $arr[row+1][column] = 0
                        $arr[row+2][column] = 0          
                
                elsif $arr[row][column]==$arr[row-1][column] && $arr[row][column]==$arr[row-2][column] 
                    puts
                    $arr[row][column] = 0
                    $arr[row-1][column] = 0
                    $arr[row-2][column] = 0  
                end 
                show_array
            else
                puts "Plzz enter valid value:"
            end
    end
            def exit_array
                $count=0
                for i in 0...$arr.size
                    for i in 0...$arr.size
                        if $arr[i][j]==0
                            $count=$count+1
                        end
                    end
                end
                if $count==35
                    exit
                end
            end 
        end
end
obj = Candy.new
obj.show_array
obj.cheking_array
obj.exit_array