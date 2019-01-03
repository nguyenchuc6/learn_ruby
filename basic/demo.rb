class Demo
  # Concatenating Strings

  myString = "Welcome " + "to " + "Ruby!"
  mystring2 = "Welcome " "to " "Ruby!"
  # If you aren't happy with the above options you can chain strings together using the << method:
  myString3 = "Welcome " << "to " << "Ruby!"
  myString4 = "Welcome ".concat("to ").concat("Ruby!")
  puts "#{myString4}"

  # Freezing a Ruby String (đóng băng)
  myString.freeze;
  # myString << "hello"  không sửa đổi string
  getElement = myString["Ruby"]
  puts "#{getElement}"
  myString["Perl"] #=> nil
  myString[4].chr # 0
  myString[11, 4] #ruby
  myString[0..6] #welcome
  index = myString.index("Ruby")
  puts "#{index}"

  # Comparing Ruby Strings

  "John" == "Fred" #false
  "chuc".eql? "chuc" #true

  "Apples" <=> "Apples" #=> 0
  "Apples" <=> "Pears" #=> -1
  "Pears" <=> "Apples" #=> 1

  "Apples".casecmp "apples" # as above 0

  #comment muti line
  # variable
  MYCONSTANT = "hello"

  a = 10
  b = 20 # as a, b, c, d = 10, 20, 30, 40
  c = 30
  d = 40

  number = 22;
  checkednumber = number.kind_of? Integer;
  checkednumber2 = number.class #exacly tupe of object
  puts "#{checkednumber2}" # Integer
  x = 10

  # Converting Variable Values
  x.to_f # 10.0 float

  54321.to_s # => "54321"
  54321.to_s(2) # 1101010000110001 co so
  54321.to_s(16)
  #score  variable
  puts "#{defined? x}" # [a-z] or _ loopcounter = 10  && _LoopCounter = 20 khuyen khich dat ten bien local
  $y = "name"
  defined? $y # global-variable"

  #@u An instance variable
  # @@ variable class

  #Converting Numbers in Ruby
  Integer (10.3) # 10

  # method
  #   def output_something(value)
  #     puts value
  #   end
  #
  #   output_something(2)
  #
  #   def multiply(val1, val2 )
  #     result = val1 * val2
  #     puts result
  #   end
  #
  #   multiply( 2, 10 )
  #   multiply( 4, 20 )
  #   multiply( 10, 40 )
  #   multiply( 6, 7 )

  # Ruby Ranges

  ar_range = (1..10).to_a # 1..10
  puts "#{ar_range}"
  # Using Range Methods

  words = 'cab'..'car'
  words.min # cab
  words.max # car

  check_exist = words.include? ('can') # true
  puts check_exist

  words.reject {|subrange| subrange < 'cal'} # reject values below a specified range value  => ["cal", "cam", "can", "cao", "cap", "caq", "car"]
  words.each {|word| puts "Hello " + word} # iterate through each value and perform a task "hello (cab cac .. car)"

  # Ruby Ranges as Conditional Expressions
  while input = gets
    puts input + " triggered" if input =~ /start/ .. input =~ /end/
  end

  # Ruby Range Intervals

  (1..20) === 15       # Does the number fit in the range 1 to 20 => true

  ('k'..'z') === 'm'   # Does the letter fall between the letters 'k' and 'z' in the alphabet? => true
  # Ranges in case Statements
  score = 70

  result = case score
           when 0..40
             "Fail"
           when 41..60
             "Pass"
           when 61..70
             "Pass with Merit"
           when 71..100
             "Pass with Distinction"
           else "Invalid Score"
           end

  puts result


  rult = "John".eql? "John"
  print "Enter your First Name: "
  first_name = gets.chomp

  print "Enter your Last Name: "
  last_name = gets.chomp
  name = "nguyen minh chuc";
  puts "hi #{name}"

  puts "Hi #{first_name} #{last_name}! Nice to meet you!"

end