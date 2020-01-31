
class BinarySearchTree

  def initialize(root_score = nil, root_title = nil)
    @root = Node.new(root_score, root_title)
  end

  def insert(score, title, node = @root)
    if !@root.score
      node = Node.new(score, title)
      @root = node
      return node
    elsif score == node.score
      return node
    elsif score < node.score
      if node.left
        insert(score, title, node.left)
      else
        node.left = Node.new(score, title)
      end
    elsif score > node.score
      if node.right
        insert(score, title, node.right)
      else
        node.right = Node.new(score, title)
      end
    else
      node = Node.new(score, title)
      return node
    end
  end
end
