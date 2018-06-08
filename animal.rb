class Animal
  attr_accessor :gender
  def initialize(gender)
    @gender = gender
  end

  def eat
    puts "nom nom"
  end

end

class Cat < Animal
 
  def meow
    puts "meow meow"
  end

  def sex
    if @gender == "female"
      puts "Your cat is female"
    else
      puts "Your cat is #{@size} #{@gender}"
    end 
  end
end

chester = Cat.new("blue")
chester.meow
#chester.gender = "female"
chester.sex
chester.eat

merlin = Animal.new("male")
merlin.eat
puts merlin.gender
merlin.gender = "female"
puts merlin.gender
