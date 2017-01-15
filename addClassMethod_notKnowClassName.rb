## use class as param, add any classes a instance method
## if you want to add Class method use instance_eval
## if you want open object, use instance_eval
## class_eval will change self and current class

def add_method_to(cls)
  cls.class_eval do
    def m; 'hello'; end
  end
end


add_method_to(String)
puts 'aa'.m
