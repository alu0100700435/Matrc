class Matriz
  
  attr_reader :row, :col
  
  include Enumerable

  def initialize(row,col)
    @row,@col = row,col
   end
   
  def *(other)
    if(self.col == other.row)
      matres = self.class.new(self.row,self.col)
      for i in 0...self.row
        for j in 0...other.col
          for k in 0...self.col
            matres[i,j] += self[i,k] * other[k,j]
          end
        end
      end
      matres
	end
  end
  
  def +(other)
    if(self.col == other.col && other.row == self.row)
      matres = self.class.new(self.row,self.col)
      for i in 0...self.row
        for j in 0...self.col
          matres[i,j] = self[i,j] + other[i,j]
        end
      end
      matres
	end  
  end
  
  def -(other)
    if(self.col == other.col && other.row == self.row)
      matres = self.class.new(self.row,self.col)
      for i in 0...self.row
        for j in 0...self.col
          matres[i,j] = self[i,j] - other[i,j]
        end
      end
      matres
	end      
  end
 
  def ==(other)
   if (self.row != other.row || self.col != other.col)
    return false
   end
   for i in 0...self.row
    for j in 0...self.col
      if(self[i, j] != other[i,j])
	return false
      end
    end
   end
  return true
end

  def coerce(other)
    [self, other]
  end

  def each
    for i in 0...self.row
	  for j in 0...self.col
	    yield self[i, j]
      end
	end
  end

  def max
     max = -9999
     for i in 0...@row
       for j in 0...@col
         if(self[i,j] > max)
            max = self[i,j]
         end
        end
      end
  max
 end
  
  def min
     min = 9999
     for i in 0...@row
       for j in 0...@col
         if(self[i,j] < min)
            min = self[i,j]
         end
        end
      end
  min
 end
  
end
