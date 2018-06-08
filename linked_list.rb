class LinkedListNode
  attr_accessor :node_value, :next_node

  def initialize(node_value, next_node=nil)
    @node_value = node_value
    @next_node = next_node
  end

end


class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  #push a value onto the stack
  def push(value)
    puts "value#{value}"
    puts "data#{data}"
    @data = LinkedListNode.new(value, data)
  end

  def pop
    if data != nil
      current_node = data
      @data = data.next_node
      current_node
    end
  end

end


def reverse_list(list)
  reversed_stack = Stack.new

  while list
    reversed_stack.push(list.node_value)
    list = list.next_node
  end

  reversed_stack.data
end

def print_values(list_node)
    if list_node
      print "#{list_node.node_value} --> "
      print_values(list_node.next_node)
    else
      print "nil\n"
      return
    end
  end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "----------"

revlist = reverse_list(node3)

print_values(revlist)

puts revlist.inspect


#stack = Stack.new
#stack.push(37)
#stack.push(99)
#stack.push(12)
#print_values(stack.data)
#
#reverse_list(stack.data)
#print_values(reversed_stack.data)
#
#print_values(stack.pop)
#print_values(stack.pop)
#print_values(stack.pop)
#print_values(stack.pop)
#print_values(stack.pop)
#print_values(stack.pop)



