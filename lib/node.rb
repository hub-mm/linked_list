# node.rb
# frozen_string_literal: true

# Setup Node Class to build node with value and next node value.
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
