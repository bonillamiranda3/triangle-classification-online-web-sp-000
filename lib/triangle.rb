class Triangle

  attr_accessor :triangle

  def initialize(side_a, side_b, side_c)
    @triangle = [side_a, side_b, side_c].sort
  end

    def triangle
      case @sides.uniq.count
      when 1
        return :equilateral
      when 2
        return :isosceles
      when 3
        return :scalene
      raise TriangleError if notTriangle
    end
  end

  class TriangleError < StandardError
  end



end
