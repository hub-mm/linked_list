# node.rb
# frozen_string_literal: true

class Node
  # attr_writer :value
  # attr_reader :next_node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
