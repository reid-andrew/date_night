
class BinarySearchTree

  def initialize(root_score = nil)
    @root = Node.new(root_score)
  end


  def insert(score, node = @root)
    if !@root.score
      node = Node.new(score)
      @root = node
      return node
    elsif score == node.score
      return node
    elsif score < node.score
      if node.left
        insert(score, node.left)
      else
        node.left = Node.new(score)
      end
    elsif score > node.score
      if node.right
        insert(score, node.right)
      else
        node.right = Node.new(score)
      end
    else
      node = Node.new(score)
      return node
    end
  end


end
