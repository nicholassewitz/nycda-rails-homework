Class Triangle
  def initialize
    @equilateral = equilateral
    @isosceles = isosceles
    @scalene = scalene
  end

  def kind a,b,c
    def equilateral? a,b,c
      if a % 2 == 0 || b % 2 == 0 || c % 2 == 0
        @equilateral
      else
        @isosceles
      end
    end
  end
end
