class Stack
  attr_accessor :elements
  
  def initialize(arr = nil)
    @elements = arr || Array.new
  end
  
  def push(i)
    raise StandardError.new("The entered number is not int!") unless i.is_a? Integer
    elements << i
  end

  def pop
     elements.reverse! 
  end  
  
  def max
    elements.max
  end
end

class Extras < Stack
  def mean
  	 elements.sum / elements.size.to_f
  end
end

stack = Extras.new
6.times do
	stack.push(rand(10...30))
end
puts "Current elements #{stack.elements}"
puts "Elements in reversed order: #{stack.pop}"
puts "Highest elements: #{stack.max}"
puts "Average value: #{stack.mean}"
