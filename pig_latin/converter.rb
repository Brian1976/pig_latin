module PigLatin
  class Converter
    VOWELS = ["a", "e", "i", "o", "u"]

    def self.convert(input_word)
      word = input_word.downcase
      word_length = word.length
      vowel_position = find_vowel(word)

      puts (word[vowel_position...word_length] + word[0...vowel_position] + "ay")
    end

    def self.find_vowel(word)
      i = 0
      until word.include? word[i]
        i += 1
      end

      return i
    end
  end
end

