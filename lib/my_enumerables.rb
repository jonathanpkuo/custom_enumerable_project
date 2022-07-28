module Enumerable
  # Your code goes here

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
