======================================================
+++++RUBY++++++++   RUBY   ++++++++++++++++RUBY+++++++
======================================================

file.rb -- ruby file

RESOURCES-----  https://ruby-doc.org/
======================================================

COMMENTS - # single line

======================================================
IRB - interactive Ruby

irb then ENTER
test out ruby expressions
EXIT

======================================================

ESCAPE SEQUENCES

\n	skips to a new line
\t	indents text
\"	inserts "double quotes"
\'	inserts 'single quotes'
\\	inserts a backslash: \

ex)
puts "first line\nsecond line"
puts "\tnew paragraph"
puts "He said, \"Whoa.\""
#becomes:
first line
second line
	new paragraph
He said, "Whoa."

======================================================

METHOD - like a function, a set of expressions that returns a value. You can organize the code into subroutines that can be easily called from other areas.
-all lowercase, avoid numbers, separate with underscore (snake case)

ex)
def wait
  puts "Waiting..."
  sleep 3
  puts "Done"
end

wait #this calls the method

+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
**some METHODS**

only available for that data (strings, numbers, etc)
170 strings, 130 number methods :)

.length - string
.odd? 	- number #is the number odd, boolean
.even?	- number #is the number even, boolean

to check what methods are available:

ex)
p 2.methods.sort #or
p 2.methods

======================================================
METHOD PARAMETERS - special variable that you declare at the beginning of a method

ex) 
def add(first, second)
  puts first, second
  puts first + second
end

add(100, 50) #first is 100, second is 50

ex) 
def wait(seconds)
  puts "waiting..."
  sleep seconds #can add the number of seconds later
  puts "done"
end

wait 3 #fills 3 into the seconds spots
======================================================
PUTS method

Put "S" method - put string

ex) 
puts "hello, world" 

#puts prints whatever to the terminal, so:
"hello, world"


+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
* use p instead of puts to reveal what's going on 

ex)
put "You entered #{answer} widgets"

put answer
8 #would reveal^ 8, but that's not all

p answer
"8 /n" #reveals that there is more there

put "You entered #{answer} widgets"

======================================================

RAND method

generates a random number within a given range.

ex)
rand(4) returns a random number between 0 and 3. 
rand(6) returns a random number between 0 and 5.


======================================================
POPULAR string methods

downcase
upcase
reverse


======================================================
STRINGS
CONCATENATION AND INTERPOLATION

put "You entered " + answer + " widgets" #concatenation
put "You entered #{answer} widgets" 	 #interpolation

-use single ' ' quotes to print ^that exactly instead of replace it with the value inserted, like for a code example


======================================================

CLASSES -
string
fixnum
time

can ask class by .class

======================================================

VARIABLES - the memory locations, which hold any data to be used by any program.

Global variables begin with $
Instance variables begin with @
Class variables begin with @@ and must be initialized before they can be used in method definitions
Local variables begin with a lowercase letter or _
Constants begin with an uppercase letter.

ex)
number = 4
greeting = "Hello"

puts number #

======================================================

NUMBERS
fixnum	kind of integer
float	floating point number(decimal)

abbreviated assignment operator += -+ *= /=
follows order of operations

to_i 	-change to integer
to_f	-change to float point

======================================================

COMPARISON OPERATORS

*return a BOOLEAN*

==	equal to
!=	not equal to
<	less than
>	greater than
<=	less than or equal to
>=	greater than or equal to

REMEMBER -- using 1 = sign will change the value instead of comparing

+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-

BOOLEAN OPERATORS

||	Or
&&	And
!	Not 

======================================================

IF and UNLESS
CONDITIONALS USING comparison operators

if = true
unless = false

ex) 
if true
  puts "true"
  puts "additional code here"
end
if false
  puts "false"
  puts "additional code here"
end

+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-
EX) of both if conditional and boolean operator

def price(quantity)
  if quantity >= 100
    price_per_unit = 8
  end
  if quantity >= 50 && quantity < 100
  price_per_unit = 9
  end
  if quantity < 50
    price_per_unit = 10
  end
  quantity * price_per_unit
end

puts "Welcome to the widget store!"
answer = ask("How many widgets are you ordering?")
number = answer.to_i
total = price(number)
puts "For #{number} widgets, your total is $#{total}"

+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-

IF / ELSE ****

if_condition = false
if if_condition
  puts "if clause"
else
  puts "else clause"
end

ELSE/IF ****  ELSIF

if_condition = false
elsif_condition = true
if if_condition
  puts "if clause"
elseif elsif_condition
  puts "elsif clause"
else
  puts "else clause"
end

======================================================

ULTIMATE EXAMPLE with conditionals

def price(quantity)
  if quantity >= 100
    price_per_unit = 8
  elsif quantity >= 50 &&
    price_per_unit = 9
  else
    price_per_unit = 10
  end
  quantity * price_per_unit
end

#this is the method named price that you defined above
puts "Welcome to the widget store!"
answer = ask("How many widgets are you ordering?")
number = answer.to_i
total = price(number)
puts "For #{number} widgets, your total is: $#{total}"
  


======================================================
+++++++++++++++   RUBY ARRAYS   ++++++++++++++++++++++
======================================================

index: the numbered position of an item in an array. 
Arrays all start with the first item having an index of 0.

to create:

grocery_list = Array.new 
#OR
grocery_list = []  

...........................................  
add items as you create:

grocery_list = ["milk", "eggs", "bread"]
#OR
grocery_list = %w(milk eggs bread)
#OR
grocery_list = %W(#{item} eggs bread)  

...........................................  
add items:
grocery_list << "carrots"
#OR
grocery_list.push("potatoes")
#OR
grocery_list.unshift("celery") #will add to BEGINNING of array
#OR
grocery_list += ["ice cream", "pie"]

...........................................  
TO CHECK:
puts grocery_list.inspect

...........................................  
TO GET ITEMS:

grocery_list[0] #will bring first item
#OR
grocery_list.at(0) #at index 0, will return first
#OR
grocery_list.first
grocery_list.last

........................................... 
INSERT AT POSITION:

grocery_list.insert(2, "oatmeal")#inserts oatmeal in the 2 position in the index

........................................... 
ARRAY QUANTITY:

grocery_list.count

........................................... 
ARRAY INDEX LOCATION:

grocery_list.count("eggs")
 
........................................... 
CHECK FOR ITEM:

grocery_list.include?("eggs")
#returns boolean

........................................... 
REMOVE ITEMS:

last_item = grocery_list.pop #removes last item, assigns to var
first_item = grocery_list.shift #removes first item, assigns to var

drop_two_items = grocery_list.drop(2)
#drops last 2 items to var, but doesn't actually remove them from the array

first_three_items = grocery_list.slice(0, 3) #index first, then number of items()
#assigns first 3 array items to new var, doesn't remove from array

new_list = grocery_list.slice(2, 2) #index first, then number of items()

======================================================
+++++++++++++++   RUBY HASHES   ++++++++++++++++++++++
======================================================
  
A Hash is a dictionary-like collection of unique keys and their values. 
Also called associative arrays
similar to Arrays but arrays use integers as its index
a Hash allows you to use any object type

Hashes enumerate their values in the order that the corresponding keys were inserted.  

.......................................................
CREATE NEW
item = Hash.new
item = {}

.......................................................
CREATE NEW WITH ITEMS:

item = { "item" => "Bread", "quantity" => 1 }

** You define KEY first, and then VALUE
key is item, value is bread
key is quantity, value is 1

.......................................................
SYMBOLS AS HASH KEYS

item = { :item => "Bread", :quantity => 1 }

** can be written with symbol at end instead
item = { item: "Bread", quantity: 1}

.......................................................
NUMBERS AS HASH KEYS

item[1] = "Grocery Store"

would look like this:

{ :item => "Bread", :quantity => 1, 1 => "Grocery Store" }

.......................................................
LOOK AT THE KEYS:

item.keys

SPECIFIC KEY:

item.has_key?("brand") #returns boolean
item.key?("brand") #same
item.member?("brand") #same

item.fetch("quantity") #returns the VALUE of the key requested
item["quantity"] #same thing

.......................................................
ADD ITEMS:

item.store("calories", 100) #key and value, adds to hash


.......................................................
LOOK AT VALUES:

item.values
item.has_value?("brand")
item.value?("brand")

item.values_at("item", "brand")

======================================================
   HASH METHODS
====================================================== 
LENGTH

hash = { "item" => "Bread", "quantity" => 1, "brand" => "Treehouse Bread Company" }

print "hash.length: "
puts hash.length

#OUTPUT:

Hash: {"item"=>"Bread", "quantity" => 1, "brand" => "Treehouse Bread Company"}
hash.length:
3
.......................................................

INVERT

transpose keys and values into a new hash, so keys are values, values are hashes, order is the same

hash.invert
.......................................................

SHIFT

removes a key-value pair from hash and returns it as the two-item array with the key and value

hash.shift

#outputs the first index location to an array, and removes from the hash
["item", "Bread"]
.......................................................

MERGE

puts hash.merge({"calories'=> 100})

adds the calories
can overwrite other values of keys if you specify


=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_
=-+_=-+_=-+_=-+_=_ARRAY & HASH EXAMPLE =-+_+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_
=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_=-+_

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


#AVAILABLE on my github, step by step from beginning


======================================================
+++++++++++++++   RUBY LOOPS   ++++++++++++++++++++++
======================================================

Loops --

basic template:---------------------------------------

loop do
	#called a block, whatever is in here will loop until i tell it not to
end

============ ==equivalent== ============

loop {
	#called a block, etc etc
}
----------------------------------------------------------

#DO AND END for more than one line, 
curly braces for ONE LINE ONLY

BREAK - removes you from the loop


---------------------------RANDOM METHOD ----------------------------
https://ruby-doc.org/core-2.0.0/Random.html

prng = Random.new
prng.rand(100)       # => 42
When max is a Float, rand returns a random floating point number between 0.0 and max, including 0.0 and excluding max.

prng.rand(1.5)       # => 1.4600282860034115
When max is a Range, rand returns a random number where range.member?(number) == true.

prng.rand(5..9)      # => one of [5, 6, 7, 8, 9]
prng.rand(5...9)     # => one of [5, 6, 7, 8]
prng.rand(5.0..9.0)  # => between 5.0 and 9.0, including 9.0
prng.rand(5.0...9.0) # => between 5.0 and 9.0, excluding 9.0

*****|||	---EXAMPLE---	|||| on github ruby_loops

random_number =Random.new.rand(5)
loop do
  print "Guess the number between 0 and 5 (e to exit): "
  answer = gets.chomp
  if answer == "e"
    puts "The number was #{random_number}."
    break
  else 
    if answer.to_i == random_number
      puts "You guessed correctly!"
      break
    else
      puts "Try again."
    end
  end
end

---------------------------writing loops ----------------------------
*****|||	---EXAMPLE---	|||| on github ruby_loops

loop do
  print "Enter a number greater than 10 to exit: "
  answer = get.chomp.to_i
  if answer > 10
    break
  end
end

#OR / SAME DIFF

loop do
  print "Enter a number greater than 10 to exit: "
  answer = get.chomp.to_i
  break if answer > 10
end

---------------------------conditional loops ----------------------------
******|||	---EXAMPLE---	|||| on github ruby_loops

def get_name
  name = ""
  loop do
    print "Enter your name (minimum 2 characters, no numbers): "
    name = gets.chomp
    if name.length >= 2 && !name.index(/\d/)
      break      
    else
      puts "Name must be longer than 2 characters and not contain numbers."
    end
  end
  return name
end

name = get_name()
puts "Hi #{name}."

--------------------------- the WHILE loop ----------------------------
****||||	---EXAMPLE---	|||| on github

def print_hello(number_of_times)
  i = 0   #i is for iterator, best practice to use i, j, or k 
  while i < number_of_times
    puts "hello"
    i += 1
  end
end

answer = 0
while answer < 5
  print "How many times do you want to print 'hello'? (Enter a number greater than 5 to exit) "
  answer = gets.chomp.to_i
  print_hello(answer)
end
  
--------------------------- the UNTIL loop ----------------------------
****||||	---EXAMPLE---	|||| on github

OPPOSITE from the while loop - 
while loops runs as long as the condition is true, exits when false
until loops runs as long as the condition is false, exits when true

==============================================================================
+++++++++++++++++++++   ITERATIONS WITH EACH     +++++++++++++++++++++++++++++
==============================================================================

EXAMPLE)

array = [ 0, 1, 2, 4, 5 ]
i = 0
while i < array.length
  item = array[i]
  puts "The current array item is: #{item}"
  i += 1
end

INSTEAD you could do below (using the same array):

array.each do |item|
  puts "The current array item is: #{item}."
end

#OR

array.each {|item| puts "The current array item is: #{item}." }

ADDITION ==========================

array = [ 0, 1, 2, 3, 4, 5 ]
array.each do |item|
  item = item + 2
  puts "The current item + 2 is #{item}."
end

==============================================================================
+++++++++++++++++++++       HASH ITERATIONS      +++++++++++++++++++++++++++++
==============================================================================
business = { "name" => "Treehouse", "location" => "Portland, OR" }

business.each do |key, value|
  puts "The hash key is #{key} and the value is #{value}."
end

#OR 

business.each_pair do |key, value|
  puts "The hash key is #{key} and the value is #{value}."
end

#OR 

business.each_key do |key|
  puts "Key: #{key}"
end

#OR

business.each_value do |value|
  puts "Key: #{value}"
end


==============================================================================
+++++++++++++++++++++   TIMES ITERATION    +++++++++++++++++++++++++++++
==============================================================================

5.times do
 puts "hello!"
end

W/ ARGUMENTS

5.times do |item|
  puts "Hello! #{item}"
end

()()()()()()()()()(FOR LOOPS)()()()()()()()()()())()()()()()


==================================================================================
------------------------RUBY OBJECTS & CLASSES------------------------------------
==================================================================================

name = String.new("Regan")
instance blueprint

the act of creating an instance of a class is - instansciation
once an instance of a class is created, we call it 
AN OBJECT

"Instantiate a new instance of the String class and assign the newly instantiated instance to the variable string."

EX)
string = String.new
array = Array.new (etc) 
-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0

get print-out of methods
ex) string.methods 

strings.methods.sort (sort alphabetically)

brings array of methods

*************************** INSTANCE VARIABLES ********************************
class Name
  def initialize(title, first_name, middle_name, last_name)
    @title =title
    @first_name =first_name
    @middle_name =middle_name
    @last_name =last_name
  end
  
  def title
    @title
  end
  
  def first_name
    @first_name
  end
  
  def middle_name
    @middle_name
  end
  
  def last_name
    @last_name
  end
end

name = Name.new("Mrs.", "Juniper", "Louise", "Layman")
puts name.title + " " +
  name.first_name + " " +
  name.middle_name + " " +
  name.last_name
**********************************************************************************

()()()()()()()()() ATTRIBUTE READERS / WRITERS / ACCESSORS ()()()()()()()()()

  def title
    @title
  end

can be replaced with 
attr_reader :title

if it needs to be written
attr_writer :title

both
attr_accessor :title



######################## to_s to string method ###################################

you should define to_s because ruby will be using it automatically in "puts", 
assign it a meaning so when it calls its correct instead of a memory location 

ex)

def to_s
  full_name_with_title
end

puts name.full_name_with_title
puts name

would be:

Mrs. Juniper Louise Layman
Mrs. Juniper Louise Layman

instead of:

Mrs. Juniper Louise Layman
#<Name:0x007447bd14401>



instantiated a new instance of the BankAccount ccount class and assign it to the bankAccount 


-----------------------------------------------------------------------------------------
------------------------------- CREATE A BANK ACCOUNT  ----------------------------------
-----------------------------------------------------------------------------------------

class BankAccount 
  attr_reader :name 
  
  def initialize(name)
    @name = name
    @transactions = []
    add_transaction("Beginning Balance", 0)
  end
  
  def credit(description, amount)
    add_transaction(description, amount)
  end
    
  def debit(description, amount)
    add_transaction(description, -amount)
  end
  
  def add_transaction(description, amount)
    @transactions.push(description: description, amount: amount)
  end
  
  def balance
    balance = 0.0
    @transactions.each do |transaction|
      balance += transaction[:amount]
    end
    return balance
  end
  
  def to_s
    "Name: #{name}, Balance: #{sprintf("%0.2f", balance)}"
  end
  
  def print_register
    puts "#{name}'s Bank Account"
    puts "-" * 40
    
    puts "Description".ljust(30) + "Amount".rjust(10)
    @transactions.each do |transaction|
      puts transaction[:description].ljust(30) + sprintf("%0.2f", transaction[:amount]).rjust(10)
    end
    puts "-" * 40
    puts "Balance:".ljust(30)+ sprintf("%0.2f", balance).rjust(10)
  end
  
end

bank_account = BankAccount.new("Toggle")
bank_account.credit("Paycheck", 100)
bank_account.debit("Groceries", 40)
bank_account.debit("Gas", 10.51)
puts bank_account
puts bank_account
puts "Register:"
bank_account.print_register

-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
================= SINATRA ==================---------------==============================

Common HTTP request methods:
get
post
put
delete

ex)

require "sinatra"

get("/apple") do
  "Here's a juicy apple!"
end

BASIC app that prints "here's a juice apple!" to the browser window onload

** YOU MUST STOP the app and reload with "ruby file.rb" AGAIN to actually reload **


ERB -- Embedded Ruby

(on git - wiki)

URL Parameters-------------0----------------------0----------------0----0----00-000-000000

require "sinatra"

def page_content(title)
  File.read("pages/#{title}.txt")
rescue Errno::ENOENT
  return nil
end

get "/" do
  erb :welcome
end

get "/:title" do
  page_content(params[:title])
end
=========================================================================================
-----------ERB TAGS----------------
EX) regular embedding tags

<% grade = 97 %>
<% if grade > 60 %>
    <p>You passed!</p>
<% end %>

EX) regular embedding tags

<% 3.times do %>
    <p>fish</p>
<% end %>

EX) OUTPUT embedding tags

<%= [1, 5, 25].each do |number| %>
    <p><%= number %> fish</p>
<%= end %>
---------------PAGE CONTENT METHOD ---------------------------------------------------

def page_content(title)
  File.read("pages/#{title}.txt")
rescue Errno::ENOENT
  return nil
end

---------------SAVE CONTENT METHOD ----------------------------------------------------

def save_content(title, content)
  File.open("pages/#{title}.txt", "w") do |file|
    file.print(content)
  end
end