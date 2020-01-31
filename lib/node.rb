class Node
  attr_reader :score
  attr_accessor :left, :right

  def initialize(score)
    @score = score
    @left = nil
    @right = nil
  end



end
