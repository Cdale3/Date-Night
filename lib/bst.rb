require_relative 'node'
class Tree
  attr_reader :head

  def initialize
    @head = nil
  end

  def insert(score, title)
    current = @head
    if @head.nil?
      @head = Node.new(score, title)
      #head starts at nil and inserts first node
    else
      while current
        if score < current.score && curent.left_link.nil?
          #score is the new movie being inserted score, current score is the node we are currently on
          current.left_link = Node.new(score, title)
        elsif
          #this method knows what to do when it runs into a currently filled node and then when it reaches a nil node, to insert there.
          score > current.score && curent.right_link.nil?
          current.right_link = Node.new(score, title)
        elsif
          score < current.score.left_link
        elsif
          score > current.score.right_link
        else
          return
          #don't know why I need a return, wouldn't work without one
        end
      end
    end
  end
end
