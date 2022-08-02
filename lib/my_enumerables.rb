module Enumerable
  # Your code goes here
  def my_each_with_index
    index = 0
    for x in self.itself do
      yield(x, index)
      index += 1
    end
  end

  # Returns values that pass the conditional set forth by the block
  def my_select
    holding = []
    for x in self.itself do
      if yield(x) == true
        holding.push(x)
      end
    end
    return holding
  end

  # Returns true if and only if all values pass the conditional set forth by the block
  def my_all?
    for x in self.itself do
      return false if yield(x) == false
    end
    return true
  end

  # Returns true if any values pass the coniditional set forth by the block
  def my_any?
    for x in self.itself do 
      return true if yield(x) == true
    end
    return false
  end

  # Returns true if and only if any values fail the pass the conditional set forth by the block
  def my_none?
    for x in self.itself do
      return false if yield(x) == true
    end
    return true
  end

  # Returns the number of values that pass the conditional set forth by the block.
  def my_count
    counter = 0
    if block_given?
      for x in self.itself do
        if yield(x) == true
          counter += 1
        end
      end
    else
      for x in self.itself do
        counter += 1
      end
    end
    return counter
  end

  def my_map
    replacement = []
    for x in self.itself do
      replacement.push(yield(x))
    end
    return replacement
  end

  def my_inject(memo = self.itself[0], &block)
    memo = memo
    for x in self.itself do
      memo = yield (memo), (x)
    end
    return memo
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
