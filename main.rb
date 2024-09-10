# main.rb
# frozen_string_literal: true

require_relative 'lib/linked_list'

list = LinkedList.new

list.append('A')
list.append('B')
list.append('C')
list.append('D')
list.append('E')
list.append('F')

list.prepend(4)
list.prepend(3)
list.prepend(2)
list.prepend(1)

puts list.head.value
# puts list.head.next_node.inspect
puts list.tail.value
puts list.size
puts list.at(-2).value
puts list.pop
puts list.head.next_node.inspect
puts list.size
puts list.pop
puts list.pop
puts list.pop
puts list.pop
puts list.pop
puts list.pop
puts list.pop
puts list.size
puts list.pop
puts list.pop.inspect
puts list.size
