class Car
  def drive
   p "driving"
  end
  car_new = Car.new
  p "before send to message self is : #{self}" # self chinh la doi tuong car ma chung ta da tao
  car_new.drive
  p "after send to message self is : #{self}"

end