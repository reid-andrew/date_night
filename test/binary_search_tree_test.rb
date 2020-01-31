require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_search_tree'
require './lib/node'

class BinarySearchTreeTest < Minitest::Test

  def setup
    # require "pry"; binding.pry
    @bst = BinarySearchTree.new
    @node_one = @bst.insert(61, "Bill & Ted's Excellent Adventure")
    @node_two = @bst.insert(16, "Johnny English")
    @node_three = @bst.insert(92, "Sharknado 3")
    @node_four = @bst.insert(50, "Hannibal Buress: Animal Furnace")
    # require "pry"; binding.pry
  end

  def test_it_exists
    # skip
    assert_instance_of BinarySearchTree, @bst
  end

  def test_it_inserts_nodes
    # skip
    assert_instance_of Node, @node_one
    # assert_instance_of Node, @node_two
    # assert_instance_of Node, @node_three
    # assert_instance_of Node, @node_four
  end

  def test_it_has_lefts
    # skip
    assert_equal @node_two, @node_one.left
  end

  def test_it_has_rights
    # skip
    assert_equal @node_three, @node_one.right
    assert_equal @node_four, @node_two.right
  end

  def test_it_has_a_depth
    #skip
    assert_equal 0, @node_one.depth
    assert_equal 1, @node_two.depth 
  end


end
