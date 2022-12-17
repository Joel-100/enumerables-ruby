require_relative './enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  attr_reader :list

  def each
    yield @list
  end
end

numbers = MyList.new(1, 2, 3, 4)
numbers.each { |number| puts number }
numbers.all? { |number| number < 5 }
numbers.all? { |number| number > 5 }
numbers.any? { |number| number == 2 }
numbers.any? { |number| number == 5 }
numbers.filter(&:even?)
require_relative './enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  attr_reader :list

  def each
    yield @list
  end
end

numbers = MyList.new(1, 2, 3, 4)
numbers.each { |number| puts number }
numbers.all? { |number| number < 5 }
numbers.all? { |number| number > 5 }
numbers.any? { |number| number == 2 }
numbers.any? { |number| number == 5 }
numbers.filter(&:even?)
