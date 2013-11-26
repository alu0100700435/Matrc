#Clase matriz, que permitira realizar operaciones con matrices
class Matriz
  
  attr_reader :row, :col
  
  include Enumerable
  
  #metodo de inicialización de variables
  def initialize(row,col)
    @row,@col = row,col
   end
  
  #metodo que muestra en string la matriz
  def to_s
   aux = ""
   for i in 0...self.row
     for j in 0...self.col
       aux << "#{self[i,j]}"
     end
     aux << "\n"
    end
    aux
  end  
   
  #metodo que multiplica matrices
  def *(other)
    if(self.col == other.col && other.row == self.row)
      matres = self.class.new(self.row,self.col)
      (self.row).times do |i|
        (other.col).times do |j|
          (self.col).times do |k|
            matres[i,j] += self[i,k] * other[k,j]  
          end
			  end
      end
      matres
	  end     
  end
  
  #metodo que suma matrices
  def +(other)
    if(self.col == other.col && other.row == self.row)
      matres = self.class.new(self.row,self.col)
      (self.row).times do |i|
        (self.col).times do |j|
          matres[i,j] = self[i,j] + other[i,j]    
         end
			end
      matres
	  end  
  end
 
	#metodo que resta matrices 
  def -(other)
     if(self.col == other.col && other.row == self.row)
      matres = self.class.new(self.row,self.col)
      (self.row).times do |i|
        (self.col).times do |j|
          matres[i,j] = self[i,j] - other[i,j]    
         end
			end
      matres
	  end 
  end
 
  #metodo que hace comparaciones de igualdad entre dos matrices 
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
 
  #metodo para poder usar el modulo Enumerable
  def each
    for i in 0...self.row
	    for j in 0...self.col
	      yield self[i, j]
      end
	  end
  end

  #metodo que calcula el elemento de mayor valor dentro de la matriz
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
  
  #metodo que calcula el elemento de menor valor dentro de la matriz
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
