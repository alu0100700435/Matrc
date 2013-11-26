#clase matriz dispersa

module Matrc

  class MatrizDispersa < Matriz 
    
		#inicializacion de variables
		def initialize(row, col)
			super(row,col)
			@matrizdisp = Hash.new(zero)
		end
		
		#sobrecarga de []
		def [](row, col)
			@matrizdisp[MiHash.new(row,col)]
		end
		
		#sobrecarga de []=
		def []=(row, col, val)
			@matrizdisp[MiHash.new(row,col)] = val 	  
		end

	 end

end
