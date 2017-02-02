require_relative 'node'
class Tree
  attr_reader :head

  def initialize
    @head = Node.new
  end

  def insert(new_data, new_title)
    @head.insert_new_node(new_data, new_title)
  end
end
