##method can be unbind by call Method#unbind
module ModuleName
  def my_method
    puts 'name'
  end

end

unboundMethod = ModuleName.instance_method(:my_method)
puts unboundMethod.class
