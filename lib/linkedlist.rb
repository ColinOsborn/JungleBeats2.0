require_relative 'node'
require "pry"
class Linkedlist
  attr_reader :head

  def initialize(value)
    @head = Node.new(value)
  end

  def tail
    current = @head
    until current.next_node == nil
      current = current.next_node
    end
    current
  end

  def append(value)
    new_node = Node.new(value)
    tail.next_node = new_node
  end

  def count
    current_node = @head
    counter = 1
      while current_node.next_node
        counter += 1
        current_node = current_node.next_node
      end
    counter
  end

end
