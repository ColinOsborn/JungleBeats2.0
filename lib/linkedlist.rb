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

  def prepend(value)

  end

  def count

  end

end
