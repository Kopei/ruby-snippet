## a class is a Class instance, so a class can have instance variables
class AA
  @my_var = 1
  def self.read; p @my_var end
  def read; p @my_var end
  def write; @my_var = 2 end
end

class BB < AA
end

obj = AA.new
AA.read
obj.read
obj.write
obj.read

objb= BB.new
objb.read
BB.read
