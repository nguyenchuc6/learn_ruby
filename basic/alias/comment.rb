class Post
  def description
    "I'm a BanKai"
  end

  def self.alias_description
    alias_method :describe, :description
  end
end

class Comment < Post
  def description
    "Hello! Everybody"
  end

  alias_description
end

m = Comment.new

puts m.description  # => "Hello! Everybody"
puts m.describe     # => "Hello! Everybody"
# Ở đây chúng ta có thể thấy rằng, alias_method được sử dụng trong phương thức Device#alias_description method và định nghĩa describe alias trên Microwave#description method chứ không phải Device#description.
class Post
  def description
    "I'm a BanKai"
  end

  def self.alias_description
    alias describe description
  end
end

class Comment < Post
  def description
    "Hello! Everybody"
  end

  alias_description
end

m = Comment.new

p m.description  # => "Hello! Everybody"
p m.describe     # => "I'm a BanKai"