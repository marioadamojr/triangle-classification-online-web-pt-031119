class Triangle
  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a=side_a
    @side_b=side_b
    @side_c=side_c

    if @side_a <= 0 || @side_b <= 0 || @side_c <= 0
      begin
        raise TriangleError
      end
    end

    if @side_a > (@side_b + @side_c) || @side_c > (@side_a + @side_c) ||@side_c > (@side_b + @side_a)
      begin
        raise TriangleError
      end
    end
  end

  def kind
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
