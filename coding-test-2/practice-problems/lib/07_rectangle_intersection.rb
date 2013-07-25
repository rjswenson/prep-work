


def rec_intersection(rect1, rect2)
  intersect = Array.new
  quadrant_1 = Array.new
  quadrant_2 = Array.new
  
  quadrant_1.push(find_x_1(rect1,rect2))
  quadrant_1.push(find_x_2(rect1,rect2))
  quadrant_2.push(find_y_1(rect1,rect2))
  quadrant_2.push(find_y_2(rect1,rect2))
  
  return nil if ((quadrant_2[0] < quadrant_1[0]) || (quadrant_2[1] < quadrant_1[1]))
  return intersect.push(quadrant_1,quadrant_2)
end


def find_x_1(rect1, rect2)          #gets x value for (x1,y1)
  if rect1[0][0] >= rect2 [0][0] 
    overlap_x_1 = rect1[0][0]
  else
    overlap_x_1 = rect2[0][0]
  end
  return overlap_x_1
end

def find_y_2(rect1,rect2)           #gets y value for (x2,y2)
  if rect1[1][1] < rect2[1][1]     
    overlap_y_2 = rect1[1][1]
  else
    overlap_y_2 = rect2[1][1]
  end
  return overlap_y_2
end

def find_x_2(rect1,rect2)           #gets x value for (x2,y2)
  if rect1[0][1] > rect2[0][1]
    overlap_x_2 = rect1[0][1]
  else
    overlap_x_2 = rect2[0][1]
  end
  return overlap_x_2
end

def find_y_1(rect1,rect2)           #gets y value for (x1,y1)
  if rect1[1][0] < rect2[1][0]
    overlap_y_1 = rect1[1][0]
  else
    overlap_y_1 = rect2[1][0]
  end
  return overlap_y_1
end