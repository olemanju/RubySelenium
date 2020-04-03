class Marvel

  class Guardians
    def Quill
      puts "I will be private Class"
    end
   end


  class Avengers
    def Tony
      puts "I will be public class"
    end
  end

# Declaring as Private
  private_constant :Guardians
end

Marvel::Avengers.new.Tony
Marvel::Guardians.new.Quill

