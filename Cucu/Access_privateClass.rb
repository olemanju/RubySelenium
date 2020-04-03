class Marvel

  class Guardians
    def Quill
      puts "I will be private Class"
    end
    def Groot
      puts "I am Groot"
    end
  end


  class Avengers
    def Tony
      puts "I will be public class"
    end
  end

  def ferry
    Guardians.new.Quill
    Guardians.new.Groot
    Avengers.new.Tony
  end

# Declaring as Private
  private_constant :Guardians
  private_constant :Avengers
end

Marvel.new.ferry

Marvel::Avengers.new.Tony
Marvel::Guardians.new.Quill

