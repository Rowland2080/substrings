my_dict = ["hell", "Or", "my", "lo", "l", "he", "re", "the", "of", "th"]

strings = "Hello, this is a program that checks for words from a given set of words and returns an hash of the corresponding words as keys and their number of occurence as values"

def substrings(string, dictionary)
  my_hash = Hash.new(0) #a new hash with default value set to 0
  split_string = string.split # changing the string to an array
  split_string.each do |word|
    dictionary.each do |substring|
      if word.downcase.include? substring.downcase #making it case insensitive
        my_hash[substring] += 1
      end
    end
  end
  my_hash

end
puts substrings(strings, my_dict)
