require 'pry'
class Node
  attr_accessor :value,
                :next_node

  def initialize(value)
    @value = value
    @next_node = nil
  end
end


# In this case, node instance
# variable refers to linked or next node
