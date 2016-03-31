gem "minitest", '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative "../lib/linkedlist"
require_relative "../lib/node"

class LinkedlistTest < Minitest::Test

  def test_setup
    assert Linkedlist, Linkedlist.new
  end

  def test_can_create_a_new_node
    node = Node.new("plop")
    assert_equal "plop", node.value
  end

  def test_can_create_a_new_node_w_value_of_nil
    node = Node.new(nil)
    assert_equal nil, node.value
  end

  def test_the_head_will_be_nil_value
    list = Linkedlist.new
    assert_equal nil, list.head
  end

  def test_we_can_find_tail
    list = Linkedlist.new
    list.append('dee')
    assert_equal "dee", list.tail.value
  end

  def test_we_can_append_one_node_into_the_list
    list = Linkedlist.new
    list.append("poop")
    assert_equal 'poop', list.tail.value
    assert_equal nil, list.tail.next_node

    list.append('rad')
    assert_equal 'rad', list.tail.value
    assert_equal nil, list.tail.next_node
  end

  def test_we_can_append_multiple_nodes_onto_the_list
    list = Linkedlist.new
    list.append(nil)
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
    list = Linkedlist.new
    list.append(nil)
    assert_equal nil, list.tail.value
    list.append('rad')
    assert_equal 'rad', list.tail.value

    list.append('poop')
    assert_equal 'poop', list.tail.value

    assert_equal 3, list.count
  end

  def test_can_put_my_nodes_to_a_string
    list = Linkedlist.new
    list.append "doop"
    assert_equal "doop", list.head.value

    list.append("deep")
    list.append("poop")
    assert_equal "poop", list.tail.value
    assert_equal "doop deep poop", list.to_string
  end

  def test_we_can_prepend_a_node
    list = Linkedlist.new
    list.append("plop")
    assert_equal "plop", list.head.value

    list.append("poop")
    list.append("dee")

    list.prepend("deep")
    assert_equal "deep", list.head.value
    assert_equal "deep plop poop dee", list.to_string
  end

  def test_we_can_insert_a_node
    list = Linkedlist.new
    list.append("dop")
    assert_equal "dop", list.head.value

    list.append("plop")
    list.append("suu")
    assert_equal "dop plop suu", list.to_string
    assert_equal 3, list.count

    list.insert(1, "woo")
    assert_equal "dop plop woo suu", list.to_string
  end

  def test_we_can_find_nodes_by_position_and_also_how_many_to_return
    list = Linkedlist.new
    list.append("ding")
    assert_equal "ding", list.head.value

    list.append("plop")
    assert_equal "ding plop", list.to_string
    list.append("dee")
    list.append("blop")
    assert_equal "ding plop dee blop", list.to_string

    assert_equal "dee", list.find(2, 1)
    end

    def test_we_can_pop_off_node
      list = Linkedlist.new
      list.append "dah"
      assert_equal "dah", list.head.value

      list.append("deep")
      list.append("plop")
      assert_equal "dah deep plop", list.to_string

      assert_equal "plop", list.pop
      assert_equal "dah deep", list.to_string
    end

    def test_include_in_my_nodes
      list = Linkedlist.new
      list.append "dop"
      assert_equal "dop", list.head.value

      list.append("plop")
      list.append("suu")
      assert_equal "dop plop suu", list.to_string
      assert true, list.include?("plop")
    end

    def test_returns_false_if_not_there
      list = Linkedlist.new
      list.append "dop"
      assert_equal "dop", list.head.value

      list.append("plop")
      list.append("suu")
      list.append("poop")
      refute_equal false, list.include?("pizza")
      assert_equal "dop plop suu poop", list.to_string
    end
end
