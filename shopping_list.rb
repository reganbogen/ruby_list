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

def print_separator(character="-") #makes a line
  puts character * 80
end

def print_list(list) #method with list we want to print as argument
  puts "List; #{list['name']}" #print list name with string interpolation
  print_separator()
  
  list["items"].each do |item| #each method - blocks are curly braces or 'do' and 'end'
    #take each item in this array of list items and assign it to a variable called 'item'
    puts "\tItem: " + item['name'] + 
        "Quantity: " + item['quantity'].to_s 
  end
  print_separator()
end

list = create_list()

puts "Great! Add some items to your list."

list['items'].push(add_list_item()) 
list['items'].push(add_list_item()) 
#asks the question 'what is the item called? and quantity?', if you use it again it will ask for another list item after you add the first.

puts "Here's your list:\n"
print_list(list)