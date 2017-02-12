MyClass=Class.new(Array) do
  define_method :my_method do
    "hello"
  end
end


my=MyClass.new
puts my.my_method
