require_relative 'node'
require "pry"
class Linkedlist

  def initialize(value)
    @head = Node.new(value)
  end

  def append(value)
    current = @head
    unless current.next == nil
      current = current.next
    end
    current.next = Node.new(value, nil)
  end
end
