def half_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  puts ">"
  etage_number = gets.chomp.to_i 

  puts "Voici la pyramide:"

  for i in 1..etage_number do
    puts " " * etage_number + "#" * i
    etage_number = etage_number - 1
  end

  puts ""
end 


def full_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  puts ">"
  etage_number = gets.chomp.to_i 

  puts "Voici la pyramide: "

  1.upto(etage_number) do |i|
    puts " " * (etage_number) + "#" * ( 2 * i - 1)
    etage_number = etage_number - 1
  end

puts ""
end 

def wtf_pyramid 
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? Je n'accepte que les nombres impairs"
  puts ">"
  etage_number = gets.chomp.to_i 
  while etage_number%2 ==0
    puts "JE T'AI DIT NOMBRE"
    puts ">"
    etage_number = gets.chomp.to_i 
  end 
  number = etage_number

  puts "Voici la WTF: "

  1.upto(etage_number) do |i|
    puts " " * (number) + "#" * ( 2 * i - 1)
    number = number - 1
  end

  (etage_number - 1).downto(1) do |i|
    puts " " * (number + 2) + "#" * ( 2 * i - 1) 
    number += 1
  end

puts ""
end 

wtf_pyramid
