gem "minitest", '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative "lib/node"

class NodeTest < Minitest::Test

  def test_can_see_node
    node = Node.new("beep", "doop")
    assert_equal "beep", "doop", node.new
  end
end
