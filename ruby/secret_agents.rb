#Pseduo: Encrypt
# - First create a variable and give it  a script value
# - Next use encrypt method on the script value
# - When encrypt method is assigned a script value, advance every letter on the string on letter forward
#Pseduo Decrypt
# - Use  the decrypt method on a script value
# - When the decrypt method is assigned to a value move back every letter of the string.




encrypt = ->(rotation, text) do
alphabet = ("a".."z").to_a
key = Hash[alphabet.zip(alphabet.rotate(rotation))]
text.each_char.inject("") { |encrypted, char| encrypted + key[char] }
end
puts encrypt.(1, "zed")


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
  
  
  puts decrypt("budwiser")

 #puts decrypt(encrypt("swordfish"))


# Our nested method call did not work properly. Our encrypt and decrypt are built differently. May cause an issue.

#Ask the user for their name
# Ask the user if they would like to have the pass encrypt or decrypted
# Ask the user for password
# Encrypt or Decrypt pass
# Print the result 
# After printing result exit the console 

puts "Secret Agent Whats your name?"
name = gets.chomp 

puts "Would you like to decrypt or encrypt a password (y/n)"
password = gets.chomp

puts "what is your password?"
password = gets.chomp

