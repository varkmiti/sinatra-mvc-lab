class PigLatinizer 

    def piglatinize(phrase)
        array = phrase.split
        array = array.map{|word| piglatinizeword(word) }
        array.join(" ")
    end

    def piglatinizeword(word)
        if word.start_with?("a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
            (word + "way")
        elsif word.start_with?("spr", "squ", "sch", "str" "Spr", "Squ", "Sch", "Str")
            (word[3..-1] + word[0..2] + "ay")
        elsif word.start_with?("pl", "ch", "th", "st", "sh","pr", "sk", "wh", "Pl", "Ch", "Th", "St", "Sh", "Pr", "Sk", "Wh")
            (word[2..-1] + word[0..1] + "ay")
        else
            (word[1..-1] + word[0] + "ay")
        end
    end
end