module Enumerable
  # Your code goes here
  def my_each_with_index
    index = 0
    for x in self.itself do
      yield(x, index)
      index += 1
    end
  end

  def my_select
    holding = []
    for x in self.itself do
      if yield(x) == true
        holding.push(x)
      end
    end
    return holding
  end

end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for x in self.itself do
      yield(x)
    end
  end
end
