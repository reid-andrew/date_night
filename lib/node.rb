class Node
  attr_reader :score, :title, :movie
  attr_accessor :left, :right, :depth

  def initialize(score, title, depth)
    @score = score
    @title = title
    @depth = depth
    @movie = {title => score}
    @left = nil
    @right = nil
  end

  def insert_node(score, title, node)
    if score > node.score
      if node.right.nil?
        new_node = Node.new(score, title, node.depth+1)
        node.right = new_node
        new_node.depth
      else
        insert_node(score, title, node.right)
      end
    elsif score < node.score
      if node.left.nil?
        new_node = Node.new(score, title, node.depth+1)
        node.left = new_node
        new_node.depth
      else
        insert_node(score, title, node.left)
      end
    end
  end


end
