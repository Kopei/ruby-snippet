RESOURCE_VERB = ['get', 'put', 'post', 'delete']

RESOURCE_VERB.each do |x|
  eval <<-terminated
  def #{x}(url, *args, &blk)
    r[path].#{x}(*args, &blk)
  end
  terminated
end
