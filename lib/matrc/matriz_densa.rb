require "matrc/matriz.rb"

module Matrc

	class MatrizDensa < Matriz

		def initialize(row,col)
		  super(row,col)
		  @mtdensa = Array.new(row){Array.new(col, zero)}
		end
		
		def [](row,col=nil)
      if (col.nil?)
        @mtdensa[row]
      else
		   @mtdensa[row][col]
			end
		end
		
		def []=(row,col=nil,val)
		  if (col.nil?)
        @mtdensa[row]=val
      else
		   @mtdensa[row][col]=val
			end
		end
		
	end
end
