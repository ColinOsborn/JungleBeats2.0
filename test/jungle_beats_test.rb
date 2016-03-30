gem "minitest", '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative "../lib/linkedlist"
require_relative "../lib/jungle_beats"
require_relative "../lib/node"

class JungleBeatsTest < Minitest::Test

  def test_setup
    jb = JungleBeat.new("Deep")
    assert_equal "Deep", jb.list.tail.value
  end

end
