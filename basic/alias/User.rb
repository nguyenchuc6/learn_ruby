class User
  # Ruby cung cấp alias (bí danh) keyword để xử lý các alias của phương thức và thuộc tính
  def fullname
    "nguyen chuc"
  end
  alias username fullname
  alias name username

  u = User.new
  puts u.username
  puts u.name
  puts u.fullname

  alias_method :username1, :fullname # as alias nhung tuan thu qua tac method



end