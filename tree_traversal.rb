class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

end

# The "Leafs" of a tree, elements that have no children
deep_fifth_node = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node = Tree.new(4, [])

# The "branches" of the tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
shallow_fifth_node = Tree.new(5, [ninth_node])

# The "trunk" of the tree
trunk_node = Tree.new(2, [seventh_node, shallow_fifth_node])


# check your current elements, then recursively check your children
# 
def depth_first_search(tree, desired_payload)
  p tree.payload
  p "-----"
  # tree if tree.payload = desired_payload
  return if tree.payload = desired_payload

  tree.children.each do
    p child.payload
    depth_first_search(tree.children)
  end
end

depth_first_search(trunk_node, 11)