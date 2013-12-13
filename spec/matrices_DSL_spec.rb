require "matrc"

describe Matrc::MatrizDSL do
   before :all do

     #clase que hereda de MatrizDensa
    class MatEntero < Matrc::MatrizDensa
       #definicion del elemento nulo
       def zero
         0
       end
     end
  end

describe "#Matrices de enteros" do
   before :all do
		@test = Matrc::MatrizDSL.new("Suma") do
			tipo_matriz =  MatEntero 
			opcion = "consola"
			operandos [[1, 2], [4, 5]]
			operandos [[9, 8], [6, 5]]
		end
   end  

   describe "# Representación correcta de la operacion (como cadena de caracteres): " do
     it "Matrices densas" do
       @test.calcular.should eq("\n Suma\n ====\n\n 1. [[1,2],[4,5]]\n 2. [[9,8],[6,5]]\n = [[10,10],[10,10]]\n\n")
      
     end
   end

end
end
