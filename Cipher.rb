puts 'Input the message you want to cipher:'
msg = gets.chomp

Alphabet = [*("!".."z"), *(" ")]
Alphabet.delete("-")

p Alphabet.join

Key = Alphabet.to_a.shuffle
puts "Your key is #{Key.join}"

msgCiphered= msg.tr(Alphabet.to_a.join, Key.join)
 
puts "Your ciphered message: #{msgCiphered}" 

msgDeciphered= msgCiphered.tr(Key.join, Alphabet.to_a.join)

puts "Your deciphered message: #{msgDeciphered}"
