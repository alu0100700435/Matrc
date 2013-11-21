class MiHash 

  attr_accesor :row, :col
  
  def initilize(row,col)
    @row, @col = row, col
  end
  
  def eql?(other)
    (@row == other.row) && (@col == other.col)
  end
  
  def hash 
    @row.hash ^ @col.hash
  end

  def ==(other)
   self.class === other and
     other.col == @col and
     other.row == @row
  end

end
