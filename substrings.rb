
def substrings(string, dictionary)
    puts ""
    index = 0

    total = Hash.new
    word = ""
    sentence = ""

    if string.strip.include?(" ")
        
        sentence = string.downcase.split(' ')
    else
        word = string.chars.reverse
        
    end
    join = ""

    dictionary.each do |object|

        if word.length > 0
            word.delete("!") 
            word.each do |letter|

                join = letter + join
                
                
                if object == join
                    if total.has_key?(join)
                        total[join] += 1
                    else
                        total[join] = 1
                    end
                elsif object == letter
                    if total.has_key?(letter)
                        total[letter] += 1
                    else
                        total[letter] = 1
                    end
                end
                
            end
        end

        if sentence.length > 0
            sentence.each do |words|
                   
                split = words.chars.reverse
                

                split.select do |letter|
                    
                    join = letter + join
                    
                    
                    if object == join
                        if total.has_key?(join)
                            total[join] += 1
                        else
                            total[join] = 1
                        end
                    elsif object == letter
                        if total.has_key?(letter)
                            total[letter] += 1
                        else
                            total[letter] = 1
                        end
                    end
                    
                end
                join = ""
            end
        end
        

        join = ""
        
    end
    puts total
end




print "Word: "

string = gets.chomp.delete("!").delete("?").delete(',')


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings(string, dictionary)

