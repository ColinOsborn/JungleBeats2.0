require_relative 'node'
require_relative 'linkedlist'
require "pry"

class JungleBeat
  attr_reader :list

  def initialize
    @list = Linkedlist.new
  end

  def append(beat)
    single_beats = beat.split
    single_beats.each do |beat|
      @list.append(beat)
    end
  end



end
