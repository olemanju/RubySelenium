class Gadget

end

puts phone= Gadget.new
puts smart= Gadget.new
puts laptop=Gadget.new

p phone.methods.sort

p phone.respond_to?(:class)
p phone.respond_to?(:size)

p 5.methods.sort
p 5.respond_to?(:size)
p 5.respond_to?(:length)

p [2,3,4].respond_to?(:size)
p [2,3,4,6].respond_to?(:length)

p phone.object_id
p laptop.object_id
p phone==smart
