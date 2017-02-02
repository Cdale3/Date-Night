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
  end

  def test_does_inserting_work
    tree = Tree.new
    tree.insert(90, "Return of the Jedi")
    # binding.pry
    assert_equal "Return of the Jedi", tree.head.title
  end
end
