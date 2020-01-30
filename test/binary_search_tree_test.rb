require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_search_tree'

class BinarySearchTreeTest < Minitest::Test

  def setup
    @bst = BinarySearchTree.new
  end

  def test_it_exists

  assert_instance_of BinarySearchTree, @bst
  end

end
