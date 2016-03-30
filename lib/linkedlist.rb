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

  def to_string
    node_list = "#{@head.value} "
    current_node = @head
    while current_node.next_node
      node_list += "#{current_node.next_node.value} "
      current_node = current_node.next_node
    end
    node_list.chop
  end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next_node = @head
    @head = new_node
  end

  def insert(after_index, value)
    # when the after_index is equal to the counter, insert here
    current_node = @head
    counter = 0
    while counter != after_index
      current_node = current_node.next_node
      counter += 1
    end
     new_node = Node.new(value)
     rest_of_list = current_node.next_node
     current_node.next_node = new_node
     new_node.next_node = rest_of_list
  end

  def find(position, elements)
    current_node = @head
    counter = 0
      while counter != position
        current_node = current_node.next_node
        counter += 1
      end
        string = ""
        elements.times do
        string << current_node.value + " "
        current_node = current_node.next_node
      end
      string.strip
  end

  def include(beat)
    current_node = @head
    until beat != current_node.value
      current_node = current_node.next_node
    end
      beat
  end


  def pop
    saved = tail.value
    current = @head
    until current.next_node.next_node == nil
      current = current.next_node
    end
    current.next_node = nil
    saved
  end

end
