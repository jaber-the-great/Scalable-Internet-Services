# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE

  premiter = a + b + c
  longest_side = [a, b, c].max
  if a <= 0 || b <= 0 || c <= 0
    raise TriangleError

  # In other words, the sum of two smaller sides should be larger than the longest side
  # premiter - longest_side <= longest_side ==> Not a triangle
  elsif premiter <= longest_side *2
    raise TriangleError
  elsif a == b && b == c 
    return :equilateral
  elsif (a != b) && (a != c) && (b != c)
    return :scalene
  else
    return :isosceles
  end

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
