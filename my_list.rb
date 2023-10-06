require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)
puts(list.all? { |el| el < 5 })
puts(list.all? { |el| el > 5 })

puts(list.any? { |el| el == 2 })
puts(list.any? { |el| el == 5 })

print list.filter(&:even?)
