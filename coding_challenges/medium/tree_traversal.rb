# frozen_string_literal: true
require 'byebug'

class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

def array_to_tree(array, idx)
  return nil if idx >= array.length

  node = Node.new(array[idx])
  node.left = array_to_tree(array, 2 * idx + 1)
  node.right = array_to_tree(array, 2 * idx + 2)

  node
end

def pre_order(node)
  return '' if node.nil?

  result = "#{node.data} "
  result += pre_order(node.left)
  result += pre_order(node.right)
end

def post_order(node)
  # your code here
  return '' if node.nil?

  result = ''
  result += post_order(node.left)
  result += post_order(node.right)
  result += "#{node.data} "
end

tree = array_to_tree([10, 1, 2, 3, 4, 5, 6], 0)
puts pre_order(tree)
#=> 10 1 3 4 2 5 6
puts post_order(tree)
#=> 3 4 1 5 6 2 10
