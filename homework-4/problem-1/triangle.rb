Class Triangle
  def initialize a,b,c
    @a = a
    @b = b
    @c = c
  end

  def kind a,b,c
    raise TriangleError if a <= 0 or a + b <= c
    case [a,b,c].uniq.size
    when 1 then :equilateral
    when 2 then :isosceles
    else        :scalene
    end
  end
end
