require 'pry'
class Node
  attr_accessor :value,
                :node

  def initialize(value)
    @value = value
    @node = nil
  end
end


# In this case, node instance
# variable refers to linked or next node
