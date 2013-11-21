require "matrc"
require "test/unit"

class MatDispEntero < Matrc::MatrizDispersa
  def zero
    0
  end
end

class MatDispFraction < Matrc::MatrizDispersa
  def zero
    Matrc::Fraction.new(0, 1)
  end
end

class TestMatrizDispersa < Test::Unit::TestCase

  def setup
     
    @md = MatdispEntero.new(2, 2)
    @mdf = MatDispFraction.new(2,2)
    @mdf1 = MatDispFraction.new(2,2)
    
    @md[0, 0] = 2
    @md[1, 1] = 5
    
    @mdf[1, 0] = Matrc::Fraction.new(1, 5)
    @mdf[1, 1] = Matrc::Fraction.new(1, 5)

  end

   def test_simple
    @mdf1[0, 0] = Matrc::Fraction.new(2, 1)
    @mdf1[0, 1] = Matrc::Fraction.new(0, 1)
    @mdf1[1, 0] = Matrc::Fraction.new(1, 5)
    @mdf1[1, 1] = Matrc::Fraction.new(26, 5)		
    assert_equal(@mdf1, @mdf+@md)
    
    @mdf[0, 0] = Matrc::Fraction.new(0, 1)
    @mdf[0, 1] = Matrc::Fraction.new(0, 1)
    @mdf[1, 0] = Matrc::Fraction.new(1, 1)
    @mdf[1, 1] = Matrc::Fraction.new(1, 1)	
    assert_equal(@mdf1, @mdf*@md)

    @mdf[0, 0] = Matrc::Fraction.new(2, 1)
    @mdf[0, 1] = Matrc::Fraction.new(0, 1)
    @mdf[1, 0] = Matrc::Fraction.new(-1, 5)
    @mdf[1, 1] = Matrc::Fraction.new(24, 5)	
    assert_equal(@mdf1, @mdf1-@md)
 
   end

   def test_failure
     @mdf[0, 0] = Matrc::Fraction.new(1, 2)
     @mdf[0, 1] = Matrc::Fraction.new(1, 2)
     @mdf[1, 0] = Matrc::Fraction.new(1, 2)
     @mdf[1, 1] = Matrc::Fraction.new(1, 2)
     assert_not_equal(@mdf1, @mdf1-@md)
   end
     
   
end
