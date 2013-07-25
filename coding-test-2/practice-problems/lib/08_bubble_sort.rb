



def bubble_sort(arr)
 
#if array has 1, return
#if array has 0, return

#look at 1st 2 elements in an array
#if 1 is > 2, swap
#if 2 >3 , swap, etc
#loop
#break when no swaps are done
#output new array

  return arr if (arr.length == 1  || arr.length == 0) #1 number cannot be sorted
  
  
  (arr.length-1).times do
    for x in 0..arr.length-1
      if arr[x+1] == nil
        next
      elsif arr[x] > arr[x+1]
        index_adjust = arr[x]
        arr.delete_at(x)
        arr.insert(x+1, index_adjust)
        switched = true
      end
    end
  end

  return arr
end
