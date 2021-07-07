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
        puts "y pour lancer"
        new_entry = gets.chomp
        if new_entry != "y"
            puts "mec t'abuses"
            puts "C'est juste une touche" 
            new_entry = gets.chomp
        else 
            des = rand (1..6)        
        end
    return des   
end 

def jeux(position)
    while position <= 10
        puts "#{position} avant"
        des = lance_des
        puts "Tu as fait : #{lance_des}"
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
    return true 
end

def victoire(jeux)
    puts "Bravo !"
end

def perform 
    position = 1
    jeux = jeux(position)
    victoire(jeux)
end

perform