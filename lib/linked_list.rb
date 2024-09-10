# linked_list.rb
# frozen_string_literal: true

require_relative 'node'

class LinkedList
  attr_reader :head_node, :tail_node

  def initialize
    @head_node = nil
    @tail_node = nil
  end

  def append(value)
    if @tail_node.nil?
      @tail_node = Node.new(value)
      @head_node = @tail_node if @head_node.nil?
    else
      @tail_node.next_node = @tail_node = Node.new(value)
    end
  end

  def prepend(value)
    if @head_node.nil?
      @head_node = Node.new(value)
      @tail_node = @head_node if @tail_node.nil?
    else
      @head_node = Node.new(value, @head_node)
    end
  end

  def size
    return 0 if @head_node.nil?

    count = 0
    current_node = @head_node

    while current_node
      count += 1
      current_node = current_node.next_node
    end

    count
  end

  def head
    @head_node
  end

  def tail
    return nil if @tail_node.nil?

    @tail_node
  end

  def at(index)
    return index = 0 if @head_node.nil?

    list_size = size

    index += list_size if index.negative?

    return nil if index.negative? || index >= list_size

    current_node = @head_node

    index.times { current_node = current_node.next_node }

    current_node
  end

  def pop
    return nil if @head_node.nil?
    return @head_node = @tail_node = nil if @head_node == @tail_node

    value = @tail_node.value
    current_node = @head_node
    current_node = current_node.next_node until current_node.next_node == @tail_node

    current_node.next_node = nil
    @tail_node = current_node

    value
  end
end
