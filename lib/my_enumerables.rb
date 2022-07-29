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

  def my_all?
    for x in self.itself do
      return false if yield(x) == false
    end
    return true
  end

  def my_any?
    for x in self.itself do 
      return true if yield(x) == true
    end
    return false
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
