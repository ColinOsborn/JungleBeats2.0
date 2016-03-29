gem "minitest", '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative "../lib/linkedlist"
require_relative "../lib/node"

class LinkedlistTest < Minitest::Test

  def test_setup
    assert_equal Linkedlist, Linkedlist.new("test").class
  end

  def test_can_create_a_new_node
    node = Node.new("plop")
    assert_equal "plop", node.value
  end

  def test_can_create_a_new_node_w_value_of_nil
    node = Node.new(nil)
    assert_equal nil, node.value
  end

  def test_the_head_can_be_a_nil_value
    list = Linkedlist.new(nil)
    assert_equal nil, list.head.value
  end

  def test_we_can_find_tail
    list = Linkedlist.new("dee")
    assert_equal "dee", list.tail.value
  end

  def test_we_can_append
    list = Linkedlist.new('poop')
    assert_equal 'poop', list.tail.value
    assert_equal nil, list.tail.next_node

    list.append('rad')
    assert_equal 'rad', list.tail.value
    assert_equal nil, list.tail.next_node
  end

  def test_we_can_append_multiple_nodes_onto_the_list
    list = Linkedlist.new(nil)
    assert_equal nil, list.tail.value
    assert_equal nil, list.tail.next_node

    list.append('rad')
    assert_equal "rad", list.tail.value
    assert_equal nil, list.tail.next_node

    list.append('poop')
    assert_equal 'poop', list.tail.value
    assert_equal nil, list.tail.next_node
  end

  def test_counter_can_count_my_nodes
    list = Linkedlist.new(nil)
    assert_equal nil, list.tail.value

    list.append('rad')
    assert_equal 'rad', list.tail.value

    list.append('poop')
    assert_equal 'poop', list.tail.value

    assert_equal 3, list.count
  end
end
