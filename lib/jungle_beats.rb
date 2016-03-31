require_relative 'node'
require_relative 'linkedlist'
require "pry"

class JungleBeat
  attr_reader :list
  attr_accessor :rate, :voice

  def initialize
    @list = Linkedlist.new
    @rate = 500
    @voice = "Boing"
  end

  def append(beat)
    single_beats = beat.split
    single_beats.each do |beat|
      @list.append(beat)
    end
  end

  def count
    @list.count
  end

  def play
    beats = @list.to_string
    `say -r #{@rate} -v #{@voice} #{beats}`
  end

end
