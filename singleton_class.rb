class C
  def a_singleton_method
    'C#a_method'
  end

  def self.a_class_method
    'C#a_class_method'
  end
end

class D < C; end
obj = D.new

class << obj
  def a_singleton_method
    "C#singleton_method"
  end
end

puts "obj's class is #{obj.class}"
puts "obj's singleton_class's class is #{obj.singleton_class.class}"
puts "obj's singleton_class's superclass is #{obj.singleton_class.superclass}"
puts "obj's singleton_class's superclass's class'superclass is #{obj.singleton_class.superclass.singleton_class.superclass}"

puts obj.a_singleton_method #C#singleton_method

# class C
#   class << self
#     def a_class_method
#       "C.a_class_method()"
#     end
#   end
# end

c = C.new
# class << c
#   def a_class_method
#     'this is c single method'
#   end
# end
puts C.a_class_method
#
# puts obj.singleton_class.superclass
# puts obj.singleton_method
# class C
#   class << self
#     def a_class_method
#       "C.a_class_method()"
#     end
#   end
# end
#
# puts C.singleton_class
# puts D.singleton_class
# puts D.singleton_class.superclass
# puts C.singleton_class.superclass
# puts C.class, C.class.superclass, D.class, D.class.superclass
# puts obj.class.superclass
