#Hamster Info

p "What is your Hamsters Name?"
name = gets.chomp

p "Is your hamster loud? (y/n)" 
loud = gets.chomp


p "What is the fur color on your hamster?"
fur = gets.chomp

p "On a scale of 1-5 is your hamster friendly? (1 being not friendly 5...well you get it)"
scale = gets.chomp.to_i
"scale".to_i

p "what do you think is the estimated age of your hamster?"
age = gets.chomp.to_i




#Answers from clerk 

p "Is the name of your hamster #{name}?"

p "Your hamster is not loud #{loud}" 

p "The fur color is #{fur}"

p "Your hamster is #{scale} (1 not friendly 5 is friendly)"

p "the estimated age of your hamster is #{age} "

