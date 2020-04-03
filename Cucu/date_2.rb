require 'date'

d= Date.parse('13thmarch2020')

puts d

puts d.yday
puts d.wday
puts d.month
puts d.year
puts d.day

puts d.strftime('%a %d %b %Y')