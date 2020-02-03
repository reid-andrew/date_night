require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_search_tree'
require './lib/node'

class BinarySearchTreeTest < Minitest::Test

  def setup
    # require "pry"; binding.pry
    @tree = BinarySearchTree.new
    @node_one = @tree.insert(61, "Bill & Ted's Excellent Adventure")
    @node_two = @tree.insert(16, "Johnny English")
    @node_three = @tree.insert(92, "Sharknado 3")
    @node_four = @tree.insert(50, "Hannibal Buress: Animal Furnace")
    # require "pry"; binding.pry
  end

  def test_it_exists
    # skip
    assert_instance_of BinarySearchTree, @tree
  end

  def test_it_inserts_nodes
    # skip
    assert_equal 0, @node_one
    assert_equal 1, @node_two
    assert_equal 1, @node_three
    assert_equal 2, @node_four
  end

  def test_it_has_lefts_and_rights
    # skip
    assert_equal ({"Sharknado 3"=>92}), @tree.root.right.movie
    assert_equal ({"Johnny English"=>16}), @tree.root.left.movie
    assert_equal ({"Hannibal Buress: Animal Furnace"=>50}), @tree.root.left.right.movie
  end

  def test_it_includes_scores
    assert_equal true, @tree.include?(16)
    assert_equal true, @tree.include?(50)
    assert_equal false, @tree.include?(44)
  end

  def test_it_reports_depth_of
    assert_equal 1, @tree.depth_of(92)
    assert_equal 2, @tree.depth_of(50)
  end

  def test_it_finds_max
    assert_equal ({"Sharknado 3"=>92}), @tree.max
  end
end
