def half_pyramid 
    puts "Combien d'étages ?"
    i = gets.chomp.to_i
    n = 1
    while n <= i
        n.times do 
        print "#"
        end
    print "\n"
    n += 1
    end
end 


def full_pyramid
    puts "Combien d'étages ?"
    i = gets.chomp.to_i * 2
    n = 1
    while n <= i
            if n%2 != 0 
                x = (i  - n) / 2
                x.times do
                    print " "
                end
                n.times do         
                print "#"
                end 
            print "\n"
            end
        n += 1
    end 

end 

def wtf_pyramid

    puts "Combien d'étages (uniquement un chiffre pair) ?"
    i = gets.chomp.to_i * 2
    impair = i/2
    n = 1
    b = i / 2 -1
    if impair%2 == 0 
        puts "mec..."
    else 
        while n <= b + 1
                if n%2 != 0 
                    x = (i  - n) / 2
                    x.times do
                        print " "
                    end
                    n.times do         
                    print "#"
                    end 
                print "\n"
                end
            n += 1
        end 

        while b >= 1
            if b%2 != 0 
                x = (i  - b) / 2
                x.times do
                    print " "
                end
                b.times do         
                print "#"
                end 
            print "\n"
            end
        b -= 1
        end 
    end
end


half_pyramid
puts ""
full_pyramid
puts ""
wtf_pyramid