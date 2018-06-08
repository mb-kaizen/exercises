class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

end

def reverse_list(list)
  previous_node = nil
  while list
    current_node = list
    next_node = current_node.next_node
    current_node.next_node = previous_node
    list = next_node
    previous_node = current_node
  end

  puts previous_node.inspect

  return previous_node
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

node3 = LinkedListNode.new(3)
node2 = LinkedListNode.new(2, node3)
node1 = LinkedListNode.new(1, node2)


print_values(node1)

puts "----------"

revlist = reverse_list(node1)

print_values(revlist)



