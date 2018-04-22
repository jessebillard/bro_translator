require 'pry'

def bro_dictionary
    bro_dictionary = {
        :special_phrases => {
            "what are you up to friend?" => "wut it is homie?",
            "would you like to meet up?" => "yo u down to chill?",
            "would you like to hang out?" => "wana chill bro?",
            "she is a beautiful person" => "for real tho homie finna smash dat",
            "what are you doing?" => "wyd?",
            "please give me a call" => "holler at ur boiiiii!!!!",
            "would you care to come over for dinner and movie at my place?" => "netflix n chill?"
        },
        "hi" => "yo",
        "hello" => "sup",
        "to" => "2",
        "two" => "2",
        "too" => "2",
        "for" => "4",
        "For" => "4",
        "four" => "4",
        "be" => "b",
        "you" => "u",
        "at" => "@",
        "and" => "&",
        "straight" => "str8",
        "brother" => "bro",
        "though" => "tho",
        "yes" => "ya",
        "great" => "dope",
        "awesome" => "lit",
        "family" => "fam",
        "friend" => "dawg",
        "fire" => "fuego",
        "goodbye" => "peace",
        "no" => "nah",
        "ok" => "chill",
        "what" => "wut",
        "my" => "muh",
        "food" => "grub",
        "delicious" => "dank",
        "music" => "tunes",
        "bad" => "wack",
        "hang" => "chill",
        "tonight" => "2night",
        "care" => "down"
    }
end

def word_substituter(phrase)
    bro_dictionary[:special_phrases].each do |lame_phrase, lit_phrase|
        if phrase == lame_phrase
            return lit_phrase
        end
    end
    phrase_array = phrase.split
    i = 0
    while i < phrase_array.size
        bro_dictionary.each do |old_word, new_word|
            if phrase_array[i] == old_word
                phrase_array[i] = new_word
            end
        end
        i += 1
    end
    phrase_array.join(" ")
end

def run_bro_translator
    puts "Welcome to the Official Bro Translator"
    puts "Would you like to litify your verbage? (for sure/nah brah)"
    begin_answer = gets.chomp
    if begin_answer != "nah brah" && begin_answer != "for sure"
        puts "For real bro?! It was a simple for sure or nah brah. Let's try again"
        puts "Would you like to litify your verbage? (for sure/nah brah)"
        second_answer = gets.chomp
        if second_answer != "nah brah" && second_answer != "for sure"
            puts "Seriously bro?! I could be slamming brewskies rn, but I'm trying to help you, but since you're not taking it seriously, I'm bailing. PEACE"
        elsif second_answer == "for sure"
            puts "Great, type your dusty ass old phrase in and smash that mf enter button for that fresh new new"
            loop do
                user_phrase = gets.chomp
                if user_phrase == "exit"
                    puts "This was hella dope dawg, hope you learned some clean lingo"
                    break
                    else
                    puts word_substituter(user_phrase)
                end
            end
        elsif second_answer == "nah brah"
            puts "Alrighty bro, till the next episode"
        end
    end
    
    if begin_answer == "nah brah"
        puts "Alrighty bro, till the next episode"
    elsif begin_answer == "for sure"
        puts "Great, type your dusty ass old phrase in and smash that mf enter button for that fresh new new"
        loop do
            user_phrase = gets.chomp
            if user_phrase == "exit"
                puts "This was hella dope dawg, hope you learned some clean lingo"
                break
            else
                puts word_substituter(user_phrase)
            end
        end
    end
    
end


