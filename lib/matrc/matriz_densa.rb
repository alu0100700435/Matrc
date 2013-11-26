#clase matriz densa

module Matrc

	class MatrizDensa < Matriz
 
		#inicializacion de variables
		def initialize(row,col)
		  super(row,col)
		  @mtdensa = Array.new(row){Array.new(col, zero)}
		end
		
		#sobrecarga de []
		def [](row,col=nil)
      if (col.nil?)
        @mtdensa[row]
      else
		   @mtdensa[row][col]
			end
		end
		
		#sobrecarga de []=
		def []=(row,col=nil,val)
		  if (col.nil?)
        @mtdensa[row]=val
      else
		   @mtdensa[row][col]=val
			end
		end
		
	end
end
