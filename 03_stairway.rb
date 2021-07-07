def avance (position)
    position += 1
    return position
end

def recule (position)
    position -= 1
    return position
end

def stagne (position)
    position = position 
    return position
end

def lance_des
    des = rand (1..6)
    return des   
end 

def jeux(position)
    nb_lances = 0
    while position < 10
        puts "#{position} avant"
        des = lance_des
        nb_lances += 1
        puts "Tu as fait : #{des}"
        if des == 5 || des == 6
            position = avance(position)
        elsif des == 1
            if position == 1
                position = stagne(position)
            else 
                position = recule(position)
            end
        else 
            position = stagne (position)
        end
        puts "Ta position est :#{position}"
    end
    return nb_lances
end

def victoire
    puts "Bravo !"
end

def perform 
    position = 1
    compteur_lances = 0
    100.times do 
        puts position
        compteur_lances = compteur_lances + jeux(position)
        victoire
        puts compteur_lances
    end
    moyenne_lances = compteur_lances / 100
    puts moyenne_lances 
end

perform