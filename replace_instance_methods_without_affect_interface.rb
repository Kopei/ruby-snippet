## class macros are method define in Module, so class or module can use
## like attr_accessor, attr_reader, attr_writer like keyword method
class Interface
  def pp
    puts 'pp'
  end

  def qq(name)
    puts 'qq'+name.to_s
  end

  def self.deprecate(old_method, new_method)
    define_method old_method do |*args, &blk|
      puts "warning: #{old_method} is not used, pls use #{new_method}"
      send new_method, *args, &blk
    end
  end

  deprecate :QQ, :qq
end

c = Interface.new
c.QQ 'name'
