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
    jb.append("woo hoo shu")
    assert_equal 3, jb.count
  end

  def test_we_can_read_head_data_after_appending_many_nodes
    jb = JungleBeat.new
    jb.append("dop plop suu poop")
    assert_equal "dop", jb.list.head.value
    assert_equal 4, jb.count
  end

  def test_we_can_keep_track_of_all_these_nodes
    jb = JungleBeat.new
    jb.append("ding dah oom oom ding oom oom oom ding dah oom oom ding dah oom oom ding dah oom oom ")
    assert_equal 20, jb.count
  end

  # def test_we_can_play_all_of_these_nodes
  #   jb = JungleBeat.new
  #   jb.append("ding dah oom oom ding oom oom oom ding dah oom oom ding dah oom oom ding dah oom oom ")
  #   jb.play
  # end
  # 
  # def test_we_can_troll_horace
  #   jb = JungleBeat.new
  #   jb.append("yo give me a fooooooooooooooooouuuuuuuuurrrrr")
  #   jb.play
  # end

  def test_we_can_adjust_the_voice
    jb = JungleBeat.new
    jb.append("ding dah oom oom ding oom oom oom ding dah oom oom ding dah oom oom ding dah oom oom ")
    jb.voice("Alice")
    jb.play
  end
end
