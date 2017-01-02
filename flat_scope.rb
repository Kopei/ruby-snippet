## def , class , module can change the scope
## so if you want to share vars through class and def, use Class.new and dynamic
## method
var = 'this is a string'
MyClass=Class.new do
  puts "#{var} shows!"

  define_method :my_method do
    "#{var} in the scope!"
  end
end

m=MyClass.new.my_method
puts m
