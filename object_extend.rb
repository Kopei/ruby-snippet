## include can only include module instance method not class method
module ObjExt
  def my_method
    self
  end
end

obj = Object.new

class << obj
    include ObjExt
end

p obj.my_method

# same effect using Object#extend
obj1 = Object.new
obj1.extend ObjExt
p obj1.my_method
