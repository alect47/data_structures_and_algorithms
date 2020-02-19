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

  def push(name)
    empty? ? set_head(name) : set_tail(name)
  end

  def new_node(name)
    Node.new(name)
  end

  def empty?
    head.nil?
  end

  def last_node(node)
    return node if node.tail?
    last_node(node.next_node)
  end

private

  def set_head(name)
    @head = new_node(name)
  end

  def set_tail(name)
    last_node(@head).next_node = new_node(name)
  end
  # def push(name)
  #   if !@head
  #     @head = Node.new(name)
  #   elsif @head.tail?
  #     @head.next_node = Node.new(name)
  #   end
  # end
end
