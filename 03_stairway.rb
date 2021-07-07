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

def jeux(position, count_des)
    while position < 10
        puts "#{position} avant"
        des = lance_des
        count_des += 1
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
    return count_des 
end

def victoire(count_des)
    puts "Bravo !"
    puts count_des
    return 
end

def perform 
    count_des = 0
    total_des =  0
    100.times do 
        position = 1
        jeux = jeux(position, count_des)
        victoire(jeux)
        total_des += jeux
    end
    puts total_des / 100
end

perform