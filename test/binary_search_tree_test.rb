require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_search_tree'
require './lib/node'

class BinarySearchTreeTest < Minitest::Test

  def setup
    @bst = BinarySearchTree.new
    @node = @bst.insert(61, "Bill & Ted's Excellent Adventure")
  end

  def test_it_exists
    assert_instance_of BinarySearchTree, @bst
  end

  def test_it_inserts_nodes
    assert_instance_of Node, @node
  end

end
