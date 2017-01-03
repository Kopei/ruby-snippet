## @@var is  class variables . it share with subclass and instances;
## class instance variable do not share varaible with subclass and instance
class MyClass
  @var = 333
  def self.read
    puts @var
  end

  def read
    puts @var
  end

  def write=(d)
    @var = d
  end
end

my = MyClass.new
puts my.read
puts my.write= 22
puts my.read
MyClass.read
