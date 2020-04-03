# Super class or parent class
class GeeksforGeeks

  # constructor of super class
  def initialize

    puts "This is Superclass"
  end

  # method of the superclass
  def super_method

    puts "Method of superclass"
  end
end

# subclass or derived class
class Sudo_Placement < GeeksforGeeks

  # constructor of deriver class
  def initialize
    super()
    puts "This is Subclass"
  end

  def child_method

    puts "Method of Child Class"
  end
end

ong = Sudo_Placement.new
ong.super_method
ong.child_method


