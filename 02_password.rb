#Définition du mot de passe 
def signup 
    print "Nouveau mot de passe :"
    print "\n"
    pswrd = gets.chomp
    return pswrd
end

#demande du mot de passe (login)
def login(pswrd)
    puts "Veuillez renseigner votre mot de passe :" 
    new_entry = gets.chomp
        while new_entry != pswrd
            puts "mot de passe erronné"
            puts "Veuillez renseigner votre mot de passe :" 
            new_entry = gets.chomp
        end 
    return true
end 

#Ecran de bienvenue
def welcome_screen (login)
    if login == true
      puts "Bienvenu"
    end
    
end 

def perform 
    pswrd = signup
    puts "#{pswrd}"
    login = login(pswrd)
    welcome_screen(login)
end

perform 