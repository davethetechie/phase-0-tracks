# Pseudocode: 
#   - First create a variable and give it a script value 
#   - Next use the encrypt method on the script value
#   - When encrypt method is assigned a script value, advance every letter of the string one letter forward.
# Pseudocode: Decrypt 
#   - Use the decrypt method on a script value. 
#   - When the decrypt method is assigned to a script value, move back every letter of the string. 


encrypt = ->(rotation, text) do
  alphabet = ("a".."z").to_a
  key = Hash[alphabet.zip(alphabet.rotate(rotation))]
  text.each_char.inject("") { |encrypted, char| encrypted + key[char] }
end

puts encrypt.(1, "abc")

def decrypt (input)
    index = 0
    string = ""
    a_to_z = "abcdefghijklmnopqrstuvwxyz !"
    while index < input.length
        if input[index] == "a"
            string += "z"
        else
            each_letter = a_to_z.index(input[index].downcase)
            string += a_to_z[each_letter - 1]
        end
        index += 1
    end
    p string
  end
  
  
  puts decrypt("afe")

# puts decrypt(encrypt("swordfish"))

# Our nested method call did not work correctly, our encrypt and decrypt are built differently possibly 
# giving us the error messages. 

#Pseudocode:
# Ask the secret agent for their name
# Ask the secret agent if they would like to decrypt or encrypt a password
# Ask the secret agent for the password 
# Encrypt or decrypt password 
# print results to the console 
# After printing results exit the program. 

puts "Secret Agent, What is your name?"
name = gets.chomp 

valid_input = false
until valid_input 
  puts "Would you like to decrypt or encrypt a password? Yes or No?"
    password = gets.chomp

    if password == "Yes" 
      puts "Thank you!"
      valid_input = true
    elsif password == "No"
      puts "But we need to!"
      valid_input = false
    else
      puts "So, are you? Yes or No."
  end
end

puts "What is your password?"
user_password = gets.chomp

puts name, password, user_password

