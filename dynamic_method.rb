class Computer
  def initializer(computer_id, data_source)
    @id = computer_id
    @ds = data_source
    data_source.methods.grep('/^get_(.*)_info$/'){Computer.define_component $1}  ## $1 is global param
  end

  def self.define_component(name)
    define_method(name) do
      info=@ds.send "get_#{name}_info", @id
      price=@ds.send "get_#{name}_info", @id
      result="#{name.capitalize}: #{info} ($#{price})"
      return result
      result
    end
end
