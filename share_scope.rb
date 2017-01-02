def shared_scope
  var = 0
  Kernel.send :define_method, :counter do
    puts var
  end

  Kernel.send :define_method, :inc do |x|
    var += x
  end
end

shared_scope
counter
inc(3)
counter
