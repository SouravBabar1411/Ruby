# Rename the file name
puts File.rename("/home/dell/Documents/smaple.txt", "/home/dell/Documents/newSample.txt")  
  
# # Checking the old filename is existing or not 
 puts File.file?("/home/dell/Documents/smaple.txt")
  
# # Checking the renamed file is exiting or not
 puts File.file?("/home/dell/Documents/newSample.txt")
  
# # Checking the file have read permission
 puts File.readable?("/home/dell/Documents/newSample.txt")
  
#  # Checking the file have write permission
 puts File.writable?("/home/dell/Documents/newSample.txt")   