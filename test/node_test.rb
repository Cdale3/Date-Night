
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/bst'
require 'pry'


class NodeTest < Minitest::Test

    def test_insert_default_node
      tree = Tree.new
      assert_equal 50, tree.head.score
    end

  def test_node_makes_node
    node = Node.new(53, "Flubber")
    assert_equal Node, node.class
  end

  def test_node_has_score
    node = Node.new(60, "Avengers")
    assert_equal 60, node.score
  end

  def test_node_knows_title
    node = Node.new(87, "Tropic Thunder")
    assert_equal "Tropic Thunder", node.title
  end

  def test_left_node_starts_nil
    node = Node.new(87, "Tropic Thunder")
    assert_nil node.left_link
  end

  def test_right_node_starts_nil
    node = Node.new(87, "Tropic Thunder")
    assert_nil node.right_link
  end

  def test_node_with_right_link
    node = Node.new(87, "Tropic Thunder")
    assert true, node.left_link
  end

  def test_node_with_left_link
    node = Node.new(87, "Tropic Thunder")
    assert true, node.right_link
  end

  def test_nodes_can_pass_off_left
    node_1 = Node.new(87, "Tropic Thunder")
    node_2 = Node.new(01, "The Waitress")
    node_1.left_link = node_2
    assert_equal node_2, node_1.left_link
  end

  def test_nodes_can_pass_off_right
    node_1 = Node.new(87, "Tropic Thunder")
    node_2 = Node.new(01, "The Waitress")
    node_1.right_link = node_2
    assert_equal node_2, node_1.right_link
  end
end
