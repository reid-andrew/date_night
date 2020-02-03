
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

  def depth_of(score, node = @root)
    if !node.score
      nil
    elsif score == node.score
      node.depth
    elsif score > node.score
      if node.right
        depth_of(score, node.right)
      else
        nil
      end
    elsif score < node.score
      if node.left
        depth_of(score, node.left)
      else
        nil
      end
    end
  end

  def max(node = @root)
    if !node.score
      nil
    elsif node.right
      max(node.right)
    else
      node.movie
    end
  end

  def min(node = @root)
    if !node.score
      nil
    elsif node.left
      min(node.left)
    else
      node.movie
    end
  end


end
