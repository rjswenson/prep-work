


def wonky_coins(n)
  coins_array = [n]             #adds the given coin into the machine/array
  coins_array.each do |val|     # keeps processing the coins
    
    coins_array.push(val/2, val/3, val/5) if val >= 1 #when coin val is not 0, it keeps divising it into 3 new coins
  end

  coins_array.delete_if {|num| num > 0}   #removes superfluous, already divided coins from the array
  return coins_array.length   #outputs number of coins , each value 0
end


