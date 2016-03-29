gem "minitest", '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative "linkedlist"
require_relative "node"

class LinkedlistTest < Minitest::Test

  def test_setup
    assert_equal Linkedlist, Linkedlist.new("test").class
  end

  def test_can_create_a_new_node
    node = Node.new("plop")
    assert_equal "plop", node.value
  end

  def test_append_another_node_to_create_head
    n = append("dee")
    assert_equal nil, n.append
  end
end
