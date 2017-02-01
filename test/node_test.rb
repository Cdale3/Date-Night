
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node.rb'


class NodeTest < Minitest::Test
  def test_node_makes_node
    node = Node.new(60, "Zoolander")

    assert_equal Node, node.class
  end

  def test_node_has_score
    node = Node.new(60, "Zoolander")
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
end
