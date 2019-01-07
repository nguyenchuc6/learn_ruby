class Prarent

  def say_hi
    p "Hi from Parent."
  end
end
class Child < Prarent
  def say_hi
    p "Hi from Child."
  end
  # def send
  #   p "send from Child..."
  # end
#  khong nen override phuong thuc cua object
end
son = Child.new
son.send :say_hi
 p Prarent.superclass