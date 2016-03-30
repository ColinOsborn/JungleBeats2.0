require_relative 'node'
require "pry"
class Linkedlist
  attr_reader :head

  def initialize
    @head = nil
  end

  def tail
    current = @head
    until current.next_node == nil
      current = current.next_node
    end
    current
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
    new_node = Node.new(value)
    tail.next_node = new_node
    end
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
    if @head.nil?
      @head = Node.new(value)
    else
    new_node = Node.new(value)
    new_node.next_node = @head
    @head = new_node
    end
  end

  def insert(after_index, value)
    if @head.nil?
      @head = Node.new(value)
    else
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
