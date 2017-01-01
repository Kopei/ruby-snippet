class RemoveInheritedClass
  def undef(name)
    undef_method name  ##remove all name methods include inherited
    remove_method name ##only remove child methods
  end
end
