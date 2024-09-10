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

list.to_s

puts list.head.next_node.inspect
puts "head: #{list.head.value}"
puts "head next: #{list.head.next_node.value}"
puts "tail value: #{list.tail.value}"
puts "size: #{list.size}"
puts "at value: #{list.at(-2).value}"
puts "pop: #{list.pop}"
puts "size: #{list.size}"
puts "pop: #{list.pop}"

list.to_s

puts "pop: #{list.pop}"
puts "pop: #{list.pop}"
puts "pop: #{list.pop}"
puts "pop: #{list.pop}"

list.to_s

puts "pop: #{list.pop}"
puts "pop: #{list.pop}"
puts "tail value: #{list.tail.value}"
puts "size: #{list.size}"

list.to_s

puts "pop: #{list.pop}"
puts "size: #{list.size}"
puts "contains 10: #{list.contains?(10)}"

puts "contains 1: #{list.contains?(1)}"

list.to_s
