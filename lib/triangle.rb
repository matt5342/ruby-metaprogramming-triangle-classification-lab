require 'pry'
class Triangle
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  class TriangleError < StandardError
    "Triangle error!"
  end
  def is_triangle
    sides_array = []
    sides_array.push(self.a, self.b, self.c)
    sides1 = @a + @b
    sides2 = @b + @c
    sides3 = @a + @c

    if (@a == @b && @a == @c) && sides_array.none? {|num| num <= 0} 
      return true
    elsif sides1 <= @c || sides2 <= @a || sides3 <= @b || sides_array.any? {|num| num <= 0}
      return false
    else
      true
    end
  end
  def kind
        # binding.pry

    if self.is_triangle == false
      raise TriangleError
      elsif @a == @b && @a == @c
        :equilateral
      elsif @a == @b || @b == @c || @a == @c
        :isosceles
      else 
        :scalene
      end
  end

end
