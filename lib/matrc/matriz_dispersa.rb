module Matrc

class MatrizDispersa < Matriz

	 def initialize(row, col)
			super(row,col)
			@matrizdisp = Hash.new(zero)
		end
		
		def [](row, col)
			@matrizdisp[MiHash.new(row,col)]
		end
		
		def []=(row, col, val)
		   @matrizdisp[MiHash.new(row,col)] = val 
	  
	  end
	 end
end
