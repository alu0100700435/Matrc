#Clase "posicion" de la matriz dispersa
class MiHash 

		attr_accessor :r, :c
		
		#inicializacion de variables
		def initialize(r,c)
		  @r, @c = r, c
		end
		
		#compara si los elementos son del mismo tipo y mismo valor
		def eql?(other)
		  (@r == other.r) && (@c == other.c)
		end
		
		def hash 
		  @r.hash ^ @c.hash #XOR
		end

    #metodo de comparacion
		def ==(other)
		 self.class === other and
		   other.c == @c and
		   other.r == @r
		end
	end
