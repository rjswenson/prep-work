

def no_repeats(year_start, year_end)
  non_repeat_years = Array.new
  for yr in year_start..year_end  #for each year w/in range
    non_repeat_years.push(yr) if no_repeat?(yr) == true   #adds to array
  end
  return non_repeat_years         #returns array
end


def no_repeat?(year)
  split_array = year.to_s.split(//)   #splits num into array
  unique_array = split_array.uniq     #checks to see if array has unique values
  return true if unique_array == split_array
  return false
end

