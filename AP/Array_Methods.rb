 #creating array with name days
days = ["sun","mon","tue","wed","thu","fri","sat"]
# #printing array without for loop
 puts days

 #printing array with for loop
 puts "++++++++++++++"
 for i in 0..days.size-1
     puts days[i]
 end

#Array methods
puts fetch.days(30) # It is used to default value error for out of array range
puts days.first #It will return first array element
puts days.last #It will return last array element

puts days.take(1) #The take method return first n element of array
puts days.take(2)

#Adding element in array
puts days.push("today")#We can add items at the end of array
puts days.<<("tommarow")
puts days.unshift("today")#Using unshift element can add at begning of array
puts days.insert(1,"halfday")#Using insert element can add at any position with index name

#Removing element from array
puts days.pop#It remove element from end of array and return removed items
puts days.shift#It remove element from start position and return removed items
puts days.delete("halfday")#It remove element anaywhere and return removed items
puts days.uniq#duplicate elements can be removed from array retrurn remaining array