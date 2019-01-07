module Speak # module use multi class
  def can_speak
    p "i can speak"
  end

end
class Animal
  def can_speak
    p "hello "
  end
end
class GoodDog < Animal

  include Speak
  attr_accessor :old
  attr_reader :title
  attr_writer :color
  # Class Variables
  @@number_of_dogs = 0
  # Constants
  DOG_YEARS = 3

  def initialize(name, old)
    super # super(name)
    @@number_of_dogs = 1
    p " init new a object #{@@number_of_dogs * DOG_YEARS}"
    @old = old
    @name = name # Instance variable
  end

  # Instance Methods
  def run
    p "#{@name} can run"
  end

  # Accessor Methods
  def name
    @name
  end

  def name= (name)
    @name = name
  end

  # cach 2 tao setter getter method attr_accessor
  def old_dog
    p "dog is #{old}"
  end

  def change_info(n, o)
    self.name = n
    self.old = o
  end

  def info
    "#{name} weighs #{old}."
  end
# Calling Methods With self see method change_Info

#   class method khong can khoi tao doi tuong de su dung
  def self.what_am_i         # Class method definition
   p "I'm a GoodDog class!"
  end

  # method to_s no co trong moi class override method to_s OOP

  def to_s
    "This dog's name is #{name} and it is #{old} in dog years."
  end

  def can_speak # dinh nghia lai can speak
    p super + "#{name} can speak" # use super
  end

  # mixing module




end

dog1 = GoodDog.new("black", 10)
GoodDog.what_am_i
dog1.run
dog1.name = ("red")
p dog1.name

# use attr_accessor
dog1.old = 11
p dog1.old
puts dog1.to_s
animal = Animal.new
dog2 = GoodDog.new("green",12)
animal.can_speak
dog2.can_speak



# puts "---GoodDog ancestors---"
# puts GoodDog.ancestors # tìm chuỗi đường đãn tìm kiếm
# dog1.can_speak
