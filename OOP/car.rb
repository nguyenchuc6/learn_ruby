class Car
  attr_accessor :class , :old
  def initialize(name, color)
    @name = name
    @color = color
  end

  def get_info
    p "Name: #{@name}, and Color: #{@color}"
  end
  car_vinfast = Car.new("miss",'đo')
  car_vinfast.get_info

  # getter and setter short
  # attr_accessor: getter và setter
  #
  # attr_reader: chỉ getter
  #
  # attr_writer: chỉ setter
  car_vinfast.class = "66dcht23"
  car_vinfast.old = 23



end

