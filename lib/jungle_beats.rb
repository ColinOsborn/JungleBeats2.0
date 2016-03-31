require_relative 'node'
require_relative 'linkedlist'
require "pry"

class JungleBeat
  attr_reader :list

  def initialize
    @list = Linkedlist.new
  end


end
