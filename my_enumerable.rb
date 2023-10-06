module MyEnumerable
  def all?(&block)
    each { |el| return false unless block.call(el) }
    true
  end

  def any?(&block)
    each { |el| return true if block.call(el) }
    false
  end

  def filter(&block)
    result = []
    each { |el| result << el if block.call(el) }
    result
  end
end
