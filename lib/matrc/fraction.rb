module Matrc

	class Fraction
		
		attr_accessor :num, :den

		include Comparable

		def initialize(num, den)
		  
		  com = gcd(num, den)
		  if (den < 0)
		    @num, @den = ((-1*num)/com), ((-1*den)/com)
		  else
		    @num, @den = num/com, den/com
		  end
		end
		
		def to_string()
		  "#{@num}/#{@den}"
		end
	 
		 def to_float()
		   (@num.to_f/@den.to_f)    
		 end
		
		 def +(other)
		   if !(other.is_a? Fraction)
			other = Fraction.new(other,1)
		 end
			Fraction.new(@num* other.den + other.num*@den, @den * other.den)
		 end
		 
		def -(other)
		  if !(other.is_a? Fraction)
			other = Fraction.new(other,1)
		end
		  Fraction.new(@num* other.den - other.num*@den, @den * other.den)
		end
	 
		def *(other)
		  if !(other.is_a? Fraction)
			other = Fraction.new(other,1)
		   end
		   Fraction.new(@num * other.num, @den *other.den)
		end
		
		def /(other)
		  if !(other.is_a? Fraction)
			other = Fraction.new(other,1)
		end
		  Fraction.new(@num * other.den, @den *other.num)
		end
		
		def %(other)
		  if !(other.is_a? Fraction)
			other = Fraction.new(other,1)
		end
		  a = (@num*other.den)
		  b = (@den * other.num)
		  c = a%b
		  c
		end
		
		def abs()
		   Fraction.new(@num.abs, @den.abs)
		end
		
		def -@()
		  Fraction.new(@num * -1, @den)
		end
		 
		 def reciprocal()
		   Fraction.new(@den, @num)
		 end
		     
		 def <=>(other)
		  if !(other.is_a? Fraction)
			  other = Fraction.new(other,1)
		  end
		  self.to_float() <=> other.to_float()
		 end
		 
		 def coerce(other)
		      [self,Fraction.new(other,1)]
		 end


		def gcd(u, v)
			u, v = u.abs, v.abs
			while v != 0
				u, v = v, u % v
			end
			u
		end
		      
	end

end
