require "matrc/matriz.rb"

module Matrc

class MatrizDensa < Matriz

  def initialize(row,col)
    super(row,col)
    @mtdensa = Array.new(row){Array.new(col, zero)}
  end
  
  def [](row,col)
    @mtdensa[row][col]
  end
  
  def []=(row,col,val)
    @mtdensa[row][col] = val
  end

end
end
