
class BinarySearchTree

  def initialize(root_score = nil)
    @root = Node.new(root_score)
  end


  def insert(score, node = @root)
    if !@root.score
      node = Node.new(score)
      @root = node
      require "pry"; binding.pry
      return node
    elsif score == node.score
      require "pry"; binding.pry
      return node
    elsif score < node.score
      node.left = score
      insert(score, node.left)
    elsif score > node.score
      node.right = score
      insert(score, node.right)
    else
      node = Node.new(score)
      return node
    end
  end


end
