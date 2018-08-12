class BinarySearchTree
  class Node
    attr_accessor :value, :left, :right

    # Creates node
    def initialize(value)
      @value = value
      @left = nil
      @right = nil
    end

    def insert_node(new_value)
      if new_value <= @value
        @left.nil? ? @left = Node.new(new_value) : @left.insert_node(new_value)
      elsif new_value > @value
        @right.nil? ? @right = Node.new(new_value) : @right.insert_node(new_value)    
      end
    end
  end

  attr_reader :root
  def initialize
    @root = nil
  end

  def insert(value)
    if @root.nil?
      @root = Node.new(value)
    else
      @root.insert_node(value)
    end
  end

  def build_tree(array)
    array.each do |element|
      self.insert(element)
    end
    self
  end

  # In_order_sort (Left, Root, Right)
  def sort(node)
    return if node == nil

    sort(node.left)
    p node.value
    sort(node.right)
  end
end

tree = BinarySearchTree.new
tree.build_tree([7, 4, 9, 1, 6, 14, 10])
tree.sort(tree.root)