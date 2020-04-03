puts (1..3).to_a
puts "*******************************************"
name =(1..4)
name.each do |i|
  puts "each value is #{i}"
end
puts "*******************************************"

if name.include?(2)
  puts "Value is exists"
  ans= name.min
  puts ans
else
  puts "value is not present"
  ans= name.max
  puts ans
end
puts "*******************************************"

if ((1..5)===9)
  puts "Exists"
else
  puts "does not"
end
puts "*******************************************"

# 2nd way Collct

ar=[3,34,5,6,7,8,9,9,0,3,2,4,65]

cr=ar.collect {|i|(i)}
puts cr
puts "*******************************************"

# 3rd way Times

5.times do |i|

  puts "The Values are #{i}"
end
puts "*******************************************"

# 4 Upto

2.upto(8) do |x|
  puts "The values in upto #{x}"
end
puts "*******************************************"

# 5 downto

7.downto(2) do |x|
  puts "The values in downto #{x}"
end
puts "*******************************************"
beatles = ["john","paul","george","ringo"]
for s in beatles
  puts s
end
puts "*******************************************"




