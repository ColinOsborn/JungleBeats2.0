gem "minitest", '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative "./lib/linkedlist"

class LinkedlistTest < Minitest::Test

  def test_can_create_a_new_node
    node = Node.new("plop")
    assert_equal "plop", node.new
  end
end
