#Clase Fraccion que permitira el uso de racionales en la matrices

module Matrc

	class Fraction
		
		attr_accessor :num, :den

		include Comparable

    #metodo de inicializacion de variables
		def initialize(num, den)		  
		  com = gcd(num, den)
		  if (den < 0)
		    @num, @den = ((-1*num)/com), ((-1*den)/com)
		  else
		    @num, @den = num/com, den/com
		  end
		end
		
    #metodo que muestra la fraccion en string
		def to_string()
		  "#{@num}/#{@den}"
		end

	   #metodo que muestra la fraccion en flotante
		 def to_float()
		   (@num.to_f/@den.to_f)    
		 end
		
     #metodo que suma dos fracciones, o una fraccion con un nº natural	
		 def +(other)
       #comprueba que no es una fracción, y así convertir el nº natural a fraccion
		   if !(other.is_a? Fraction) 
			   other = Fraction.new(other,1)
		   end
			 Fraction.new(@num* other.den + other.num*@den, @den * other.den)
		 end
		 
    #metodo que resta dos fracciones, o una fraccion con un nº natural	
		def -(other)
      #comprueba que no es una fracción, y así convertir el nº natural a fraccion
		  if !(other.is_a? Fraction)
			  other = Fraction.new(other,1)
		  end
		  Fraction.new(@num* other.den - other.num*@den, @den * other.den)
		end
	  
		#metodo que multiplica dos fracciones, o una fraccion con un nº natural	
		def *(other)
			#comprueba que no es una fracción, y así convertir el nº natural a fraccion
		  if !(other.is_a? Fraction)
			other = Fraction.new(other,1)
		   end
		   Fraction.new(@num * other.num, @den *other.den)
		end
	
		#metodo que divide dos fracciones, o una fraccion con un nº natural	
		def /(other)
      #comprueba que no es una fracción, y así convertir el nº natural a fraccion
		  if !(other.is_a? Fraction)
			  other = Fraction.new(other,1)
		   end
		  Fraction.new(@num * other.den, @den *other.num)
		end
		
    #metodo que calcula el resto de la división de dos fracciones, o una fraccion con un nº natural	
		def %(other)
			#comprueba que no es una fracción, y así convertir el nº natural a fraccion
		  if !(other.is_a? Fraction)
			  other = Fraction.new(other,1)
		  end
		  a = (@num*other.den)
		  b = (@den * other.num)
		  c = a%b
		  c
		end
		
		#metodo que devuelve el valor absoluto 
		def abs()
		   Fraction.new(@num.abs, @den.abs)
		end
		
    #metodo que devuelve el opuesto
		def -@()
		  Fraction.new(@num * -1, @den)
		end
		 
		#metodo que devuelve el reciproco
		def reciprocal()
		  Fraction.new(@den, @num)
		end

		#metodo que compara dos fracciones, o una fraccion y un nº natural			     
		def <=>(other)
		  if !(other.is_a? Fraction)
			  other = Fraction.new(other,1)
		  end
		  self.to_float() <=> other.to_float()
		end
		 
    #metodo que permite la permutación de operandos
		def coerce(other)
		  [Fraction.new(other,1),self]
		end

    #metodo que calcula el maximo comun divisor
		def gcd(u, v)
			u, v = u.abs, v.abs
			while v != 0
				u, v = v, u % v
			end
			u
		end
		      
	end

end
