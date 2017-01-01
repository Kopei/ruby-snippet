class Computer
  def initializer(computer_id, datasource)
    @id = computer_id
    @ds = datasource
  end

  def method_missing(name, *args, &block)
    super
    str = "get_#{name}_info"
    if !@ds.response_to?(str)
    info = @ds.send(str, @id)
    str['info'] = 'price'
    price = @ds.send(str, @id)
  end
end
