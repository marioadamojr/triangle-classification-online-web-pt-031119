class Triangle
  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a=side_a
    @side_b=side_b
    @side_c=side_c
    @sides = [@side_a, @side_b, @side_c]
  end

  def kind
    if @sides.include?(0) == true
      begin
        raise TriangleError
      end
    end
    if @sides.include?("-") == true
      begin
        raise TriangleError
      end
    end

    if @side_a == @side_b && @side_a == @side_c
      :equilateral
    elsif @side_a == @side_b || @side_a == @side_c || @side_b == @side_c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "uh oh"
    end
  end
end
