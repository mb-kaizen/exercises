class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
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
    reversed_stack.push(list.value)
    list = list.next_node
  end

  reversed_stack.data
end

def print_values(list_node)
    if list_node
      print "#{list_node.value} --> "
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



