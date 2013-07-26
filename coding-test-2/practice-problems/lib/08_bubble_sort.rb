



def bubble_sort(arr)
 
#if array has 1, return
#if array has 0, return

#look at 1st 2 elements in an array
#if 1 is > 2, swap
#if 2 >3 , swap, etc
#loop
#break when no swaps are done
#output new array
  len = arr.length

  return arr if (len == 1 || len == 0) #1 number cannot be sorted
  

  for n in 0..len-1
    for x in 0..((len-1)-n)
      if x == len-1 || arr[x] == nil
        next
      elsif arr[x+1] == nil || arr[x] > arr[x+1]
        index_adjust = arr[x]
        arr.delete_at(x)
        arr.insert(x+1, index_adjust)
      end
    end
  end

  return arr
end
