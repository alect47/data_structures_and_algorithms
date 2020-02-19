class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def count
    if @head.nil?
      0
    else
      1
    end
  end

  def push(node)
    if !@head
      @head = Node.new(node)
    elsif @head.tail?
      @head.next_node = Node.new(node)
    end
  end

  def last_node(node)
    return node if node.tail?
    last_node(node.next_node)
  end
end
