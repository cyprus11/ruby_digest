require 'digest'

def digest_the_phrase(choice, phrase)
  case choice
  when 1
    Digest::MD5.hexdigest phrase
  when 2
    Digest::SHA1.hexdigest phrase
  else
    "Такого знать не знаем."
  end
end

puts "Введите слово или фразу для шифрования:"
phrase = STDIN.gets.chomp

puts "Каким способом зашифровать:\n1. MD5\n2. SHA1"
user_choice = STDIN.gets.to_i

puts "Вот что получилось:\n#{digest_the_phrase(user_choice, phrase)}"
