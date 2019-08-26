require 'pry'

class PigLatinizer

    def piglatinize(user_phrase)
        words = user_phrase.split(" ")

        words.map do |word|
            letter_groups = word.split(/([aeiouAEIOU])/)
            first_group = letter_groups.shift

            case first_group
            when ""
                letter_groups.join + "way"
            else
                letter_groups.join + first_group + "ay"
            end
        end.join(" ")

    end
end