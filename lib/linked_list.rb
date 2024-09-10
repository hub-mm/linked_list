# linked_list.rb
# frozen_string_literal: true

require_relative 'node'

class LinkedList
  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    if @tail.nil?
      @tail = Node.new(value)
      @head = @tail if @head.nil?
    else
      @tail.next_node = @tail = Node.new(value)
    end
  end

  def prepend(value)
    if @head.nil?
      @head = Node.new(value)
      @tail = @head if @tail.nil?
    else
      @head = Node.new(value, @head)
    end
  end

  def size
    return 0 if @head.nil?

    count = 0
    current_node = @head

    while current_node
      count += 1
      current_node = current_node.next_node
    end

    count
  end

  def at(index)
    return index = 0 if @head.nil?

    list_size = size

    index += list_size if index.negative?

    return nil if index.negative? || index >= list_size

    current_node = @head

    index.times { current_node = current_node.next_node }

    current_node
  end

  def pop
    return nil if @head.nil?
    return @head = @tail = nil if @head == @tail

    value = @tail.value
    current_node = @head
    current_node = current_node.next_node until current_node.next_node == @tail

    current_node.next_node = nil
    @tail = current_node

    value
  end
end
