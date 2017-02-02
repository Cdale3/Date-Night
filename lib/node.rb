class Node
  attr_reader :score, :title
  attr_accessor :left_link, :right_link
  def initialize(score = 50, title = "")
    @score = score
    @title = title
    @left_link = 
    #links start nil
    @right_link = nil
  end
end
