def create_list
  print "What is the list name? "
  name = gets.chomp
  
  hash = { "name" => name, "items" => Array.new}
  return hash
end

def add_list_item
  print "What is the item called? "
  item_name = gets.chomp
  
  print "How much? "
  quantity = gets.chomp.to_i
  
  hash = {"name"=> item_name, "quantity" => quantity }
  return hash
end

def print_list(list) #method with list we want to print as argument
  puts "List; #{list['name']}" #print list name with string interpolation
  puts "----" #makes a line
  
  list["items"].each do |item| #each method - blocks are curly braces or 'do' and 'end'
    #take each item in this array of list items and assign it to a variable called 'item'
    puts "Item: " + item['name'] #print out item name 
    puts "Quantity: " + item['quantity'] #and quantity
    puts "----" #makes a line
  end
end

list = create_list()
puts list.inspect
list['items'].push(add_list_item())

puts list.inspect

puts add_list_item().inspect