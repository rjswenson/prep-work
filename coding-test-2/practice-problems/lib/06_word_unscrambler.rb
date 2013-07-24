
def word_unscrambler(str, words)
  #split both the word and the dictionary into str arrays
  #include? sorted string within sorted dictionary
  #if yes, output array containing said dictionary words
  #else return empty array

  str_array = str.split(//)
  sorted_str = str_array.sort
  

  dictionary_array = words.collect { |wd| wd.split(//)}
  sorted_dict = dictionary_array.collect {|lt| lt.sort}
  matched_words = []

  for i in 0..sorted_dict.length-1
    if sorted_dict[i] == sorted_str
      matched_words.push(words[i])
    end
  end
  
  return matched_words
end
