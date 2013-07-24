
def morse_encode(str)
  coded_letters_hash = { "a" => ".-", "b" => "-...", "c" => "-.-.",
                        "d" => "-..", "e" => ".", "f" => "..-.",
                         "g" => "--.", "h" => "....", "i" => "..",
                         "j" => ".---", "k" => "-.-", "l" => ".-..",
                         "m" => "--", "n" => "-.", "o" => "---",
                         "p" => ".--.", "q" => "--.-", "r" => ".-.",
                         "s" => "...", "t" => "-", "u" => "..-",
                         "v" => "...-", "w" => ".--", "x" => "-..-",
                         "y" => "-.--", "z" => "--.."}

  word_split = str.split(//)    #splits str into array of letters, includes space
  morse_arr = []
     

  word_split.each { |ltr| morse_arr.push(coded_letters_hash[ltr])}  #pushes value of letter key to new array
  morse_arr = morse_arr.join(" ")  #joins array into a string, nil adds +1 space between words
   
  return morse_arr
end

