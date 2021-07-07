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

def lance_des (count_des)
        des = rand (1..6)
        count_des += 1
    return (des, count_des)
end 

def jeux(position, count_des)
    while position < 10
        puts "#{position} avant"
        des = lance_des(des)
        count_des = lance_des(count_des)
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
    return (true, count d)
end

def victoire(jeux, count_des)
    puts "Bravo !"
    puts count_des 
end

def partie 
    position = 1
    count_des = 0
    puts position
    jeux = jeux(position, count_des)
    victoire(jeux, count_des)
end

partie
