begin 
    file = File.open("/home/dell/Documents/newSample.txt" , "r")
    file.syswrite("adding extra message")
    rescue StandardError => e  
        puts e.message  #this will print if we try to write in file
    else  
        puts file.read()
        file.close()
    ensure 
        puts "Example of file handling "
    end