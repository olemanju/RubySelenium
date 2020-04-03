module LengthConvestion
  WEB= "I am Constant and To access me :: to be used"


  def self.miles_to_feet(miles)
    miles*5280
  end

  def self.miles_to_inches(miles)
    feet= miles_to_feet(miles)
    feet*12
  end
end

puts LengthConvestion::WEB
puts LengthConvestion.miles_to_feet(40)
puts LengthConvestion.miles_to_inches(200)