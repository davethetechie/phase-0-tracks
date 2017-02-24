
def pats_won 
   puts "start of method"
   yield("Blaze","Dave")
   puts "end of method"
 end
 
 
 pats_won {|name1, name2| puts "#{name1} and #{name2} passed into the method"}
 
 puts "******************************"
 
 hobbies = ["Hiking", "Climbing", "Eating"]
 
 items = {
   blue: "Blue",
   green: "Green",
   last_one: "Last one"
 }
 
 # using .each
 p hobbies
 hobbies.each {|hobbies| puts "I like #{hobbies}" }
 p hobbies
 
 #using .map! on array
 p hobbies 
 hobbies.map! do |hobbies|
   puts hobbies + " Fanatic"
   hobbies + " Fanatic"
 end
 p hobbies
 
 # .each for hash
 p items
 items.each do |items_key, items_string|
   puts "#{items_key} is the key for the string #{items_string}" 
 end
 p items
 
 num_ary = [1,2,3,4,5,6,7,8,9]
 
 num_hash = {
   one: 1,
   two: 2,
   three: 3,
   four: 4,
   five: 5,
   six: 6,
   seven: 7,
   eight: 8
 }
 
 
 puts" delete if method"
 puts "***********************"
 p num_ary
 num_ary.delete_if {|num| num < 3}
 p num_ary
 
 
 p num_hash
 num_hash.delete_if {|word, num| num < 3 }
 p num_hash
 
 
 puts"keep if method"
 puts "***********************"
 p num_ary
 num_ary.keep_if {|num| num < 7}
 p num_ary
 
 
 p num_hash
 num_hash.keep_if {|word, num| num < 7 }
 p num_hash
 
 
 puts"select method"
 puts "***********************"
 p num_ary
 num_ary.select! {|num| num%3 == 0}
 p num_ary
 
 
 p num_hash
 num_hash.select! {|word, num| num%3 == 0}
 p num_hash
 
 
 puts"reject method"
 puts "***********************"
 
 p num_ary
 num_ary.reject! {|num| num < 6}
 p num_ary
 
 
 p num_hash
 num_hash.reject! {|word, num| num < 6}
 p num_hash 
