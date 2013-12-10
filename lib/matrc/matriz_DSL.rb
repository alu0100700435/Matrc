#clase MatrizDSL

class MatrizDSL 

  attr_accessor :operation, :op, :mostrar, :tipo
  
  def initialize(operation, &block)
    @operation = operation
    @op = []
    @tipo = ""
#    @mostrar = ""
    
     
   instance_eval(&block)
   
#   case mostrar
 #    when "fichero"
  #     then 
   #      File.open('mostrar.txt', 'mostrar') do |x|
    #       x.puts self
   #      end
  #   when "consola" then puts self 
 #    end
#   end
   end
   
   def calculo  
    case @operation
      when "Suma" 
        return @op.reduce(:+)  
   
     end 
   end    
      
      
   def operando(matrix)
    @op.push matrixcrear(matrix)
    
   end
  # def opcion(opt)
   #  @mostrar= opt
   #end
   
   def tipo_matriz(tip)
     @tipo = tip
   end
      
   def matrixcrear(elementos)
     elem = MatEntero.new(elementos.size, elementos[0].size)
     elementos.each_with_index do |x, i|
      x.each_with_index do |y, j|
        elem[i, j] = y
      end
    end
    elem
   end
   end
