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
    end
  end
end
