class Customer

  def initialize(id,name)
    @id=id
    @name=name
  end

  def display_details()
    puts "Customer id is #@id"
    puts "Customer name is #@name"
  end
end

c1= Customer.new("2","Namnju")

c1.display_details()
