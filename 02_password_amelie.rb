def signup
  puts "Choisis un MDP et l'oublie pas !"
  puts ">"
  user_MDP = gets.chomp
  return user_MDP
end 

def login(user_MDP)
  puts "renseigne ton MDP"
  puts ">"
  mdp = gets.chomp
  while mdp != user_MDP
    puts "je t'avais dit de ne pas l'oublier, réessaye:"
    puts ">"
    mdp =gets.chomp
  end 
  return true
end 

def welcome_screen(login)
  if login == true 
    return " Bienvenue dans l'espace secret de la NASA KABABA. "
  end 
end 

def perform 
  user_MDP = signup
  login = login(user_MDP)
  puts welcome_screen(login)
end 

perform