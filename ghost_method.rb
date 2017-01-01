class Computer
  def initializer(computer_id, datasource)
    @id = computer_id
    @ds = datasource
  end

  def method_missing(name, *args, &block)
    str = "get_#{name}_info"
    super if !@ds.response_to?(str)
    info = @ds.send(str, @id)
    str['info'] = 'price'
    price = @ds.send(str, @id)
  end
end
