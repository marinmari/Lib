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
<<<<<<< HEAD
    des = rand (1..6)
    return des   
end 

def jeux(position)
    nb_lances = 0
    while position < 10
        puts "#{position} avant"
        des = lance_des
        nb_lances += 1
=======
        des = rand (1..6) 
    return des   
end 

def jeux(position, count_des)
    while position < 10
        puts "#{position} avant"
        des = lance_des
        count_des += 1
>>>>>>> e8e68bbe5affd179b016ac6f3f3e65fa34d03039
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
<<<<<<< HEAD
    return nb_lances
end

def victoire
=======
    return count_des 
end

def victoire(count_des)
>>>>>>> e8e68bbe5affd179b016ac6f3f3e65fa34d03039
    puts "Bravo !"
    puts count_des
    return 
end

def perform 
<<<<<<< HEAD
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
=======
    count_des = 0
    total_des =  0
    100.times do 
        position = 1
        jeux = jeux(position, count_des)
        victoire(jeux)
        total_des += jeux
    end
    puts total_des / 100
>>>>>>> e8e68bbe5affd179b016ac6f3f3e65fa34d03039
end

perform