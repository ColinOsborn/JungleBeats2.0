require_relative 'node'
require_relative 'linkedlist'
require "pry"

class JungleBeat

  def initialize(beats)
    @list = Linkedlist.new(beats).head
  end

end
