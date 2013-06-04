module PigLatin

  # This class is responsible for handling user input.
  class UI
    # Runs pig_latin.rb as a command line utility that takes user arguments
    # as its input
    def self.run_as_command_line_utility(words)
      if ARGV.empty?
        puts "! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! !"
        puts "!                                                 !"
        puts "! correct use: pig_latin.rb word_1 word_2 word_3  !"
        puts "!                                                 !"
        puts "! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! !"
      else
        puts convert_words(words)
      end
    end

    def self.convert_words(words)
      converted_words = []
      words.each do |word|
        converted_words << convert(word)
      end
      converted_words
    end

  private

    def self.convert(word)
      Converter.convert(word)
    end
  end
end
