require 'pry'

class LinkedList2
  attr_accessor  :value, :next_node 

  def initialize(value, next_node=nil)
    @next_node = next_node
    @value = value
  end
end

    def print_values (list_node)
      if list_node
        print "#{list_node.value} --> "
        print_values (list_node.next_node)
       else
        print "nil\n"
        return
      end
    end

    def reverse_list(list, last_node=nil)
      the_node = list.next_node
      list.next_node = last_node
      if the_node
        reverse_list(the_node, list)
      else
         list
      end     
  end

   node1 = LinkedList2.new(37,)
   node2 = LinkedList2.new(99, node1)
   node3 = LinkedList2.new(12, node2)
   node4 = LinkedList2.new(77, node3)
  

  print_values(node4)
  puts "---------------------------"
  inverse_list = reverse_list(node4)
  print_values(inverse_list)

