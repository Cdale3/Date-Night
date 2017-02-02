require 'minitest/autorun'
require 'minitest/pride'
require './lib/bst'
require './lib/node'
require 'pry'

class TreeTest < Minitest::Test

  def test_we_create_a_binary_tree
    tree = Tree.new
    assert Tree.class
  end

  def test_we_can_insert_nodes
    tree = Tree.new
    node = tree.insert(97, "Empire Strikes Back")
    assert_equal "Empire Strikes Back", tree.head.title
  end

  def test_does_inserting_work
    tree = Tree.new
    tree.insert(90, "Return of the Jedi")
    # binding.pry
    assert_equal 90, tree.head.score
  end

  def test_tree_sees_empty_nodes
    tree = Tree.new
    tree.insert(0, "Phantom Menace")
    assert_equal nil, tree.head.right_link
    assert_equal nil, tree.head.left_link
  end

  def test_tree_passes_left
    tree = Tree.new
    tree.insert(49, "Attack of the Clones")
    assert_equal "Attack of the Clones", tree.head.left_link
  end

  # def test_tree_passes_right
  #   tree = Tree.new

end
