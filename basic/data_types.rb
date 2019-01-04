class Data_Types

  # number
  count_student = 10;
  puts count_student
  # boolen
  if nil
    puts "true"
  else
    puts "flase"

  end

  # string
  name = "nguyen minh chuc"
  #
  #   hash
  # create hash

  grades = { "Jane Doe" => 10, "Jim Doe" => 6 }
  options = { :font_size => 10, :font_family => "Arial" } # key is symbols
  options1 = { font_size: 10, font_family: "Arial" } #awesome
  options[:font_size]  # => 10 # if key is sysbol
  grades1 = Hash.new # hash empty
  grades1["Dorothy Doe"] = 9
  dh = Hash.new(0)  #dh.default = 0
  # Khi bạn truy cập bất kì key nào trong hash. nếu khóa có giá trị không tồn tại, hash sẽ trả về giá trị mặc định:
  puts "#{dh[9]}"

  books         = {}
  books[:matz]  = "The Ruby Language"
  books[:black] = "The Well-Grounded Rubyist"

  # tao class bang cac doi tuong

  # Hash["a", 100, "b", 200]             #=> {"a"=>100, "b"=>200}
  # Hash[ [ ["a", 100], ["b", 200] ] ]   #=> {"a"=>100, "b"=>200}
  # Hash["a" => 100, "b" => 200]         #=> {"a"=>100, "b"=>200}

  Hash.try_convert({1=>2})   # => {1=>2}
  Hash.try_convert("1=>2")   # => nil

  # hsh == other_hash → true or false
  h1 = { "a" => 1, "c" => 2 }
  h2 = { 7 => 35, "c" => 2, "a" => 1 }
  h3 = { "a" => 1, "c" => 2, 7 => 35 }
  h4 = { "a" => 1, "d" => 2, "f" => 35 }
  h1 == h2   #=> false
  h2 == h3   #=> true
  h3 == h4   #=> false
#   Kiểm tra xem 2 hash có bằng nhau hay không dựa vào việc nó có cùng cặp key-value phù hợp với cặp tương ứng trong mỗi bảng băm
  puts h1["a"]
  # assoc(obj) → an_array or nil
  # Tìm kiếm thông qua hash. trả về 1 cặp key-value hoặc nil nếu không được tìm thấy
  h1 = {"colors"  => ["red", "blue", "green"],
       "letters" => ["a", "b", "c" ]}
  h1.assoc("letters")  #=> ["letters", ["a", "b", "c"]]
  h1.assoc("foo")      #=> nil
  # loai bo pair key value
  h = { "a" => 100, "b" => 200 }   #=> {"a"=>100, "b"=>200}
  # h.clear                          #=> {}
  h.delete("a") # xoa key value
  puts h
  # Xóa tất cả các cặp key-value nếu block so sánh bằng true.
  hh = { "a" => 100, "b" => 200, "c" => 300 }
  hh.delete_if {|key, value| key >= "b" }   #=> {"a"=>100}
#   truy cap vao hash
  hh.each {|key, value| puts "#{key} is #{value}" }
  {}.empty?   #=> true
#   kiem tra ton tai key value
  t = { "a" => 100, "b" => 200 }
  t.has_value?(100)   #=> true
  t.has_value?(999)   #=> false
  # include?(key) -> true or false
  check =  t.include? "a"
  puts check
  # lay khoa key qua value
  checkey = t.key(100);
  puts checkey
  # Trả về một array chứa các keys của hash:
  arr_t = t.keys # ["a", "b"]
  puts arr_t
  t.values # array value
  t.has_key?("a")
  # merge(other_hash) → new_hash
  # Trả về 1 hash mới bao gồm other_hash. Nếu khóa bị trùng lặp thì giá trị sẽ được xác định trong other_hash
  h1_ = { "a" => 100, "b" => 200 }
  h2_ = { "b" => 254, "c" => 300 }
  hasnew = h1_.merge(h2_)   #=> {"a"=>100, "b"=>254, "c"=>300}
  puts hasnew

  # select {|key, value| block} → a_hash
  # Trả về 1 hash mới bao gồm các cặp thỏa mãn (block trả về true)
  hasnew.select{|k,v| k > "a"}
  # shift → an array or loại bỏ key value dau tien or value giá trị mặc định nếu hash rông
  hasnew.shift
  # size → fixnum
  h1.length
  h1.delete("a")
  h2.to_a # chuyen ve array

  # array

  # khai bao
  # a = [] or a = Array.new
  # gan gia tri cho mang
   # a = [1,2,"ds"] or a = Array.new(2,5,"d")
  # mang trong mang
  a = Array.new(3,Array.new(3 ,1))
  # truy cap cac phan tu trong mang
  arr_a = [1,2,4,5,2]
  arr_a[0]
  arr_a[-2] # tra ve gia tri phan tu tu cuoi len dem tu phan tu dau tien 5
  # them cac phan tu vao mang
  arr_a.push("ngh")
  arr_a << 6 # them vao cuoi mang
  arr_a.unshift(0) # them vao dau mang
  # loai bo phan tu trong mang
  phantucuoicung = arr_a.pop # xoa phan tu cuoi cung va dua ra gia tri cuoi
  arr_a.shift # xoa phan tu dau tien
  arr_a.delete_at(3)
  arr_a.compact # bo qua gia tri nil
  arr_a.uniq # bo cac phan tu trung nhau gan nhau
  arr_a.reverse # dao nguoc
  arr_a.each do |val|
    puts "value of array #{val} "
  end
  arr_a.map {|val| "v #{val}"}
  arr_a.select{|val| val > a} # lay cac gia tri phu hop voi dieu kien
  arr_a.reject {|val| val >a} # loai bo cac phan tu phu hop dieu kien


  # Symbol


  
  puts phantucuoicung








#   symbol


end