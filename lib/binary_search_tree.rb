
class BinarySearchTree
  attr_reader :root, :movies

  def initialize(root_score = nil, root_title = nil)
    @root = Node.new(root_score, root_title, depth = nil)
  end

  def insert(score, title)
    if !@root.score
      node = Node.new(score, title, 0)
      @root = node
      @root.depth
    else
      @root.insert_node(score, title, @root)
    end
  end

  def include?(score, node = @root)
    if !node.score
      false
    elsif score == node.score
      true
    elsif score > node.score
      if node.right
        include?(score, node.right)
      else
        false
      end
    elsif score < node.score
      if node.left
        include?(score, node.left)
      else
        false
      end
    end
  end

end
