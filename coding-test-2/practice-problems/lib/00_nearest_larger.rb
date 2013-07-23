

def nearest_larger(arr, idx)
  num_of_index = arr[idx]       #num value of given index location
  greater_idx_arr = Array.new   #holds idx's w/ num val > num_of_index

  for x in 0..arr.length-1      
    if arr[x] > num_of_index
      greater_idx_arr.push(x)   #pushes all idx fitting perams to array
    end
  end

  return nil if greater_idx_arr.empty?     #if none > given, return nil      
  (greater_idx_arr.length-1).times {greater_idx_arr.pop}  #pop from right to left, leaving leftmost only
  return greater_idx_arr.pop.to_i  #return last poped out idx number
  
end
  



