fileobject = File.open("/home/dell//Documents/smaple.txt","r+")
puts fileobject.read()#read all data from file
puts fileobject.readline()#read first line
puts fileobeject.readline()#read second line
puts fileobeject.readchar()#read first charcter from file
puts fileobject.readlines()#to read all lines fron files
fileobeject.close()