require 'digest'

puts "Введите слово или фразу для шифрования:"
user_word = STDIN.gets.chomp

puts "Каким способом зашифровать?"
puts "1. MD5"
puts "2. SHA1"
user_method = STDIN.gets.to_i

until user_method.between?(1, 2)
  puts "Выберите 1 или 2"
  user_method = STDIN.gets.to_i
end

puts "Вот и шифровка:"

case user_method
when 1 then puts Digest::MD5.hexdigest user_word
when 2 then puts Digest::SHA1.hexdigest user_word
end
