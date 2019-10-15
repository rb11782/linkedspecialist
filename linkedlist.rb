

# class Stack
#     attr_reader :data

#     def initialize
#         @data = nil
#     end

#     # Push a value onto the stack
#     def push(value)
#         # IMPLEMENT ME!
#     end

#     # Pop an item off the stack.
#     # Remove the last item that was pushed onto the
#     # stack and return the value to the user
#     def pop
#         # I RETURN A VALUE
#     end

# end



# module LinkedList
#   class Node
#     attr_accessor :value, :next_node

#     def initialize(value, next_node)
#       @value = value
#       @next_node = next_node
#     end
#   end

#   class Stack
#     def initialize
#       @first = nil
#     end

#     def push(value)
#       @first = Node.new(value, @first)
#     end
#     alias_method :"<<", :push

#     def pop
#       raise "Stack is empty" if is_empty?
#       value = @first.value
#       @first = @first.next_node
#       value
#     end

#     def is_empty?
#       @first.nil?
#     end
#   end
# end







class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
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
def reverse_list(list, previous=nil)
  current_head = list.next_node
  list.next_node = previous
  if current_head
    reverse_list(current_head, list)
  else
    list
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
puts "-------"
revlist = reverse_list(node3)
print_values(revlist)
