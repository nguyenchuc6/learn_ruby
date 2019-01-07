class Person

  # use method private in class no use self.
  attr_accessor :name, :quantity

  def initialize(name)
    @name = name
    @quantity = 1
    puts "There are #{stock_count} in stock"
  end

  def increment
    @quantity += 1
  end
  private
  def stock_count
    100
  end
  # gọi được phương thức stock_count, chúng ta cần phải đặt nó nằm trong phạm vi của đối tượng
  # cách duy nhất để gọi phương thức private là thực hiện điều đó trong thể hiện của đối tượng. khong su dung self.methodprivate
  protected
  def sku
    name.crypt("yo")
  end
  # method proteced se su dung self.methodproteced de truy cap
end
human = Person.new("bread")
p human





