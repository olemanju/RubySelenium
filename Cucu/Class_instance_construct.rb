class Charger

  def initialize
    @username = "User #{rand(1..100)}"
    @code="Bond #{("a".."z").to_a.sample}"
    @production_number="#{("a".."z").to_a.sample}"
    @env="#{("a".."z").to_a.sample}"
    @db="#{("a".."z").to_a.sample}-#{rand(1..199)}"
  end
  def info
    "The User name is #{@username} and the Database is #{@db} and The usage of self class is #{self.class} and the object is #{self.object_id}"
  end

end



phone = Charger.new
smart= Charger.new


puts phone.info
puts smart.info



