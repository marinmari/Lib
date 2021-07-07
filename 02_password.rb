#Définition du mot de passe 
def signup 
    print "Nouveau mot de passe :"
    print "\n"
    pswrd = gets.chomp
    return pswrd
end

#demande du mot de passe (login)
def login 

end 

#Ecran de bienvenue
def welcome_screen 

end 

pswrd = signup
puts "#{pswrd}"