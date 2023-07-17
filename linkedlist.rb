require_relative  'node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def add(value)
    new_node = Node.new(value)

    if @head.nil?
      @head = new_node
    else
      current = @head
      current = current.next_node until current.next_node.nil?
      current.next_node = new_node
    end
  end

  def append(value)
    new_node = Node.new(value)

    if @head.nil?
      @head = new_node
    else
      current = @head
      current = current.next_node until current.next_node.nil?
      current.next_node = new_node
    end
  end

  def prepend(value)
    new_node = Node.new(value)

    if @head.nil?
      @head = new_node
    else
      new_node.next_node = @head
      @head = new_node
    end
  end

  def size
    count = 0
    current = @head
    while !current.nil?
      count += 1
      current = current.next_node
    end
    count
  end

  def display
    current = @head
    while !current.nil?
      puts current.value
      current = current.next_node
    end
  end
end

list = LinkedList.new
list.append(1)
list.append(2)
list.prepend(0)
list.display
puts "Size: #{list.size}"
puts "Head: #{list.head.value}"
