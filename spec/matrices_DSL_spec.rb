require 'matrc'

describe MatrizDSL do
  before :all do
  #clase que hereda de MatrizDensa
     class MatEntero < Matrc::MatrizDensa
       #definicion del elemento nulo
       def zero
         0
       end
     end
  end

  describe "#MAtrices enteros" do
  before :all do
    @m1= MatrizDSL.new("Suma") do
      tipo_matriz = "MatEntero"
      #opcion = "consola"
      operando [[1],[2]]
      operando [[2],[3]]
    end
       
  end

 
   it "matriz 1" do
    @m2 = MatEntero.new(1,2)
     @m2[0,0] = 3
     @m2[0,1] = 5
     @m1.calculo should == @m2
   end
  end
end
