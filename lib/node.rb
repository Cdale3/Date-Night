require_relative 'bst'
class Node
  attr_reader :score, :title
  attr_accessor :left_link, :right_link
  def initialize(score = 50, title = "Ace Ventura", left_link = nil, right_link = nil)
    @score = score
    @title = title
    @left_link = left_link
    @right_link = right_link
    @depth = 0
  end

      def insert_new_node(new_score, new_title)
        if new_score < score && left_link == nil
          left_link = Node.new(new_score, new_title)
          @depth += 1
        elsif new_score > score && right_link == nil
          right_link = Node.new(new_score, new_title)
          @depth += 1
        elsif new_score < score
          left_link.insert_new_node(new_score, new_title)
          @depth += 1
        else new_score > score
          right_link.insert_new_node(new_score, new_title)
          @depth += 1
        end
      end
    end
