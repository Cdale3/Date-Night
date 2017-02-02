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
    else
      while current
        if score < current.score && curent.left_link.nil?
          current.left_link = Node.new(score, title)
        elsif
          score > current.score && curent.right_link.nil?
          current.right_link = Node.new(score, title)
        elsif
          score < current.score.left_link
        elsif
          score > current.score.right_link
        else
          return
        end
      end
    end
  end
end
