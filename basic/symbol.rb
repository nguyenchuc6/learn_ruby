class Symbol
  demosymbol = :hello
  if demosymbol.kind_of? Symbol
    puts "true"
  end
  attr_reader :title

  hash = {a: 1,b: 2}
  puts hash["a"]

end