module Malli

  def show_me
    puts "Hello Malli"
  end

  def dis
    puts "Manjunatha"
  end
end

class Meets
  include Malli

end

m= Meets.new

m.show_me
m.dis

