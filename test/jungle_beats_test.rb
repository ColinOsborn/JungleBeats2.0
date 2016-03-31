gem "minitest", '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative "../lib/linkedlist"
require_relative "../lib/jungle_beats"
require_relative "../lib/node"

class JungleBeatsTest < Minitest::Test

  def test_setup
    jb = JungleBeat.new
    jb.list.append("Deep")
    assert_equal "Deep", jb.list.tail.value
  end

  def test_appending_beats_from_list_to_jungle_beats
    jb = JungleBeat.new
    jb.list.append("dop plop suu poop")
    assert_equal "dop plop suu poop", jb.list.head.value
    jb.list.append("poop loop soup")
    assert_equal "poop loop soup", jb.list.tail.value
  end

  def test_we_can_append_multiple_nodes_at_once
    jb = JungleBeat.new
    jb.list.append("woo hoo shu")
    assert_equal 3, jb.list.count
  end

end
