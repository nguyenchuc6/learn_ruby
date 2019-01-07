#using modules for namespacing
module Animal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end

  def self.some_out_of_place_method(num)
    num ** 2
  end
end

# Private, Protected, and Public


class Dog_more_module
  buddy = Animal::Dog.new
  kitty = Animal::Cat.new
  buddy.speak('Arf!') # => "Arf!"
  kitty.say_name('kitty') # => "kitty"
  value = Animal.some_out_of_place_method(4)
  p value
  value2 = Animal::some_out_of_place_method(4)
  p value2


end