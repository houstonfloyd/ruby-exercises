#1. 
# def odd_words(string)
#   words = string.gsub(/\s+|\./,' ').split(' ')
#   return 'length error' if words.any? { |word| word.length > 20 }
#   words.each_with_index.map { |word, index|
#     index.even? ? word : word.reverse
#   }.join(' ') + '.'
# end

# p odd_words(' the first char was space.')

# #2.
class Scrabble
# alternate instead of hash is a separate method with case statement -
# added benefit that anything not listed can default to `else 0`
  SCORES = { %w(a e i o u l n r s t) => 1,
             %w(f h v w y) => 4,
             %w(b c m p) => 3,
             %w(j x) => 8,
             %w(d g) => 2,
             %w(q z) => 10,
             %w(k) => 5 }.freeze

  def initialize(word)
    @word = word
  end

  def score
    self.class.score(@word)
  end

  def self.score(word)
    # alternate is results = 0 here, so empty string returns 0
    return 0 if !word || word.empty?

    letters = word.downcase.scan(/[a-z]/)
    return 0 if letters.empty?

    letters.map do |letter|
      SCORES.select { |group, _| group.include? letter }.values
    end.flatten.reduce(:+)
  end
end

# test_case = Scrabble.new(" \t\n")
# p test_case.score

# #3.
# class Lyrics
#   BOTTLES = "bottles of beer on the wall"
#   PASS = "and pass it around"
# end

# class Verse0 < Lyrics
#   def self.verse(_)
#     "No more #{BOTTLES}, no more bottles of beer.\n"\
#     "Go to the store and buy some more, 99 #{BOTTLES}.\n"
#   end
# end

# class Verse1 < Lyrics
#   def self.verse(_)
#     "1 bottle of beer on the wall, 1 bottle of beer.\n"\
#     "Take it down #{PASS}, no more #{BOTTLES}.\n"
#   end
# end

# class Verse2 < Lyrics
#   def self.verse(num)
#     "#{num} #{BOTTLES}, #{num} bottles of beer.\n"\
#     "Take one down #{PASS}, 1 bottle of beer on the wall.\n"
#   end
# end

# class VerseN < Lyrics
#   def self.verse(num)
#     "#{num} #{BOTTLES}, #{num} bottles of beer.\n"\
#     "Take one down #{PASS}, #{num -1} #{BOTTLES}.\n"
#   end
# end 

# class BeerSong
#   VERSE_CLASSES = [Verse0, Verse1, Verse2].freeze
  

#   def verse(num)
#     VERSE_CLASSES.fetch(num, VerseN).verse(num)
#   end


#   def verses(first, last)
#     if first >= last
#       countdown(first, last)
#     else
#       countdown(first, 0) + "\n" + countdown(99, last)
#     end
#   end

#   def countdown(first, last)
#     results = []
#     first.downto(last) do |num|
#       results << verse(num)
#     end
#     results.join("\n")
#   end
  
#   def lyrics
#     verses(99, 0)
#   end
# end

# song = BeerSong.new
# puts song.verses(1, 98)

# class BeerSong
#   BOTTLES = "bottles of beer on the wall"
#   PASS = "and pass it around"


#   def line_1(num)
#     LINE_1 = { (2..99) => "#{num} #{BOTTLES}, #{num} bottles of beer.\n", 
#             (1..1) => "1 bottle of beer on the wall, 1 bottle of beer.\n",
#             (0..0) => "No more #{BOTTLES}, no more bottles of beer.\n"        
#           }
#     case num
#     when 2..99
#       "#{num} #{BOTTLES}, #{num} bottles of beer.\n"
#     when 1
#       "1 bottle of beer on the wall, 1 bottle of beer.\n"
#     when 0
#       "No more #{BOTTLES}, no more bottles of beer.\n"
#     end
#   end
  
#   def line_2(num)
#     case num
#     when 2..99
#       "Take one down #{PASS}, #{num} #{BOTTLES}.\n"
#     when 1
#       "Take one down #{PASS}, 1 bottle of beer on the wall.\n"
#     when 0
#       "Take it down #{PASS}, no more #{BOTTLES}.\n"
#     when -1
#       "Go to the store and buy some more, 99 #{BOTTLES}.\n"
#     end
#   end

#   def verse(num)
#     "#{line_1(num) + line_2(num - 1)}"
#   end


#   def verses(first, last)
#     if first >= last
#       countdown(first, last)
#     else
#       countdown(first, 0) + "\n" + countdown(99, last)
#     end
#   end

#   def countdown(first, last)
#     results = []
#     first.downto(last) { |num| results << verse(num) }
#     results.join("\n")
#   end
  
#   def lyrics
#     verses(99,0)
#   end
# end

# song = BeerSong.new
# # puts song.verses(3, 2)