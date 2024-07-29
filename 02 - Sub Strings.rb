dictionary = ["actually", "regards", "well", "hope", "unfortunately", "issue", "message", "apologies"]
def substrings(word_collection, dictionary)

  matches = []
  word_divided = word_collection.split
  word_divided.map do |word|
    if dictionary.include?(word.downcase)
      matches << word.downcase
    end
  end

  return matches

end
