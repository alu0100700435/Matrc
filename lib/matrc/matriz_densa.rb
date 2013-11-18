
class MatrizDensa < Matriz

  def initialize(row,col)
    super(row,col)
    @mtdensa = Array.new(row){Array.new(col, 0}
  end
  
  def [](row,col)
    @mtdensa[row][col]
  end
  
  def []=(row,col,val)
    @mtdensa[row][col] = val
  end

  def ==(other)
    for i in 0...@row
      for j in 0...@col
        if(@mtdensa[i][j] == other[i}[j])
	  return true
	else
          return false
        end
       end
     end
  end

end
