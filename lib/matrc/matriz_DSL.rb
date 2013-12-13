#clase MatrizDSL
module Matrc

  class MatrizDSL 

    attr_accessor :operation, :operandos, :mostrar, :tipo_matriz
    
    def initialize(operation, &block)
      @operation = operation
      @operandos = []
      @tipo_matriz = ""
      @mostrar = ""
      
       
       instance_eval &block
     case mostrar
         when "fichero"
           then 
             File.open('mostrar.txt', 'mostrar') do |x|
               x.puts self
             end
         when "consola" then puts self 
         end
      end
       
   
    end
     
     def calcular  
       
       resultado = "\n #{@operation}"
       resultado  << "\n #{'=' * @operation.size}\n\n"
 
       operandos.each_with_index do |op, index|
       resultado << " #{index + 1}. #{op}\n" 
      
       case @operation
         when "Suma" then resultado << " = #{(@operandos[0]+@operandos[1]).to_s}\n\n"
         when "Resta" then resultado << " = #{(@operandos[0]-@operandos[1]).to_s}\n\n" 
         when "Multiplicacion" then resultado << " = #{(@operandos[0]*@operandos[1]).to_s}\n\n"  
       end 
       
       resultado
         
     end    
        
        
     def operandos(elementos)
      elem = @tipo.new(elementos.size, elementos[0].size)
       elementos.each_with_index do |x, i|
        x.each_with_index do |y, j|
          elem[i, j] = y
        end
      end
      @operandos << elem
     end

     def mostrar(mostrar)
       @mostrar = mostrar
     end
     
     def tipo_matriz(tipo_matriz)
       @tipo_matriz = tipo_matriz
     end
        
     
  end
end

