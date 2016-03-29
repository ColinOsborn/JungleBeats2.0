require_relative 'node'
require "pry"
class Linkedlist

  def initialize(value)
    @head = Node.new(value)
  end
end
