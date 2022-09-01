class Anagram
    attr_reader :word
  
    def initialize(word)
      @word = word
    end
  
    def match(word_array)
      matching_words = []
      init_word_letters = @word.chars
  
      word_array.each do |word_from_array|
        matching_letter_counter = 0
        init_word_letters.each do |letter|
          if word_from_array.chars.include?(letter)
          matching_letter_counter += 1
          else 
            matching_letter_counter -= 1
          end
        end
        if matching_letter_counter == @word.length && word_from_array.length == @word.length
          matching_words << word_from_array
        end
      end
        matching_words
    end
  end
  
  
  # 1. create a method called match
  # 2. match takes a single argument, an array of strings
  # 3. each string in the array is a possible anagram to the word that an instance of Anagram
  # is initialized with.
  #     -Compare each word in array to the word Anagram was initialized with
  #     -Find possible  matches. Return an array of matches.
  #     Ex. Anagram.new("listen")
  #         Anagram.match(%w[enlist google inlets banana]) returns ["enlist", "inlets"]
  #
  # - break word down into array of its individual characters
  # - iterate thru characters of each word and check if character is included in original word
  # - create a variable with a counter that counts the number of matching letters.
  # - if the letter is included in the original word, increment counter by 1
  # - if it is NOT included, decrement by 1, I figure I need to screw with the counter value in case a word from the array is the same length as the original word
  # - once all letters have been iterated over, if the counter value eq. the length of the original word AND the length of the word from the array matches the length of the original word... 
  #     add the word in the array to a separate array of matching words
  # - reset counter to 0, loop through the characters of the next word
  # - finally return the array of matching words
  