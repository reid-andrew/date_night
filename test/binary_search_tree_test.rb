require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_search_tree'
require './lib/node'

class BinarySearchTreeTest < Minitest::Test

  def setup
    require "pry"; binding.pry
    @bst = BinarySearchTree.new
    @node = @bst.insert(61)

  end

  def test_it_exists
    skip
    assert_instance_of BinarySearchTree, @bst
  end

  def test_it_inserts_nodes
    skip
    assert_instance_of Node, @node
    # require "pry"; binding.pry
  end


end
