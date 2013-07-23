

def letter_count(str)
  
  str_arrayed = str.split(//)
  str_arrayed.delete(" ")
  letter_count = Hash.new(0)
  
  str_arrayed.each do |ltr|  
    
    if letter_count[ltr] == 0
      letter_count[ltr] = 1
    else letter_count[ltr] += 1
    end

  end
  return letter_count
end
