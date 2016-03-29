gem "minitest", '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative "node"

class NodeTest < Minitest::Test

  def test_can_node_be_created
    assert_equal Node, Node.new("plop").class
  end

  def test_can_it_hold_a_value
    node = Node.new("plop")
    assert_equal "plop", node.value
  end

  def test_linked_up
    node = Node.new("dee")
    assert_equal nil, node.node
  end
end
