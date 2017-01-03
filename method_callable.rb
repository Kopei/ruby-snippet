class MyClass
  def initialize(name)
    @name = name
  end

  def methodz
    puts @name
  end
end

my = MyClass.new('your name')
obj=my.method :methodz
obj.call
