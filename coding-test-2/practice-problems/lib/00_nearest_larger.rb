

def nearest_larger(arr, idx)
  larger_value_array = Array.new

  for x in 0..arr.length-1
    larger_value_array.push(x) if arr[x] > arr[idx]
  end

  differential = arr.length
  nearest = idx
  larger_value_array.map do |i|
    
    if i < idx  
      if (idx - i) < differential
        differential = (idx - i)
        nearest = i
      end
    else
      if (i - idx) < differential
        differential = (i - idx)
        nearest = i
      end
    end
  end
return nil if nearest == idx
return nearest 
end


