# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p "zom".gsub(/[o]/, 'oo') 
# => “zoom”



# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"
p "enhance".center(15)
#=> “    enhance    ”

p "Stop! You're under arrest!".upcase!
# => “STOP! YOU’RE UNDER ARREST!”




# " suspects".<???>
# => "the usual suspects"

p "the usual" << " suspects"
p "the usual".replace("the usual suspects")
#=> “the usual suspects”


p "suspects".prepend('the usual ')
#=> “the usual suspects”

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"
p "The case of the disappearing last letter".chop
# => “The case of the disappearing last lette”

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"
p "The mystery of the missing first letter".delete("T")
# => “he mystery of the missing first letter”

# "z".<???>
p "Elementary  ,    my   dear      Watson!".squeeze
# => “Elementary, my dear Watson!”

p "z".ord

# => 122 
# (What is the significance of the number 122 in relation to the character z?)
p "it is the integer ordinal of 'z'"

p "How many times does the letter 'a' appear in this string?".count "a"
# => 4