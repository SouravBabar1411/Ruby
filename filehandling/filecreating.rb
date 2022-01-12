# creating  a new file
fileobject = File.new("/home/dell//Documents/smaple.txt","w+")
puts "file created succesfully"
fileobject.syswrite("welome to file handling ")
fileobject.close()