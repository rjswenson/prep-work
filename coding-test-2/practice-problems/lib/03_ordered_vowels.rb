

def ordered_vowel_words(phrase)
  each_word = phrase.split              #split the phrase into words
  ordered_words = Array.new

  for i in 0..each_word.length-1        #for each word, check ordered vowels
    ordered_words.push(each_word[i]) if ordered_vowel_word?(each_word[i]) == true
  end
  return ordered_words.join(" ")        #join ordered words array to 1 string
end


def ordered_vowel_word?(word)
  vowels = ["a", "e", "i", "o", "u"]
  word_arr = word.split(//)
  word_vowels = Array.new

  for i in 0..word_arr.length-1
    if vowels.include?(word_arr[i])   #for each letter, check if vowel
      word_vowels.push(word_arr[i]) unless word_arr[i] == word_vowels.last  #push vowel to new array, unless last letter added was the same vowel
    end
  end
  return true if word_vowels == word_vowels.sort  #alpha the vowels, if nothing changed, they are already correctly ordered
  return false   #unless everything worked flawlessly, output false
end
