## test on dynamic add class instance variable 
class Book
  def initialize(name)
    @name = name
    @time = Book.timer.now
  end

  def self.timer
    @timer || Time
  end

  def to_str
    "#{@name.upcase} loaned on #{@time}"
  end
end

class FakeTime
  def self.now; 'Mon Apr 06 12:15:50'; end
end

require 'test/unit'
class TestLoan < Test::Unit::TestCase
  def test_conversion_to_string
    Book.class_eval { @timer = FakeTime }
    book = Book.new('War and Peace')
    assert_equal 'WAR AND PEACE loaned on Mon Apr 06 12:15:50', book.to_str
  end
end
