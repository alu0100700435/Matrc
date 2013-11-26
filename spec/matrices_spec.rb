#fichero que contiene las pruebas TDD(Test development driven)

require "matrc"

describe Matrc::MatrizDensa do
   before :all do

     #clase que hereda de MatrizDensa
     class MatEntero < Matrc::MatrizDensa
       #definicion del elemento nulo
       def zero
         0
       end
     end

     #clase que hereda de MatrizDensa
     class MatFraction < Matrc::MatrizDensa
       #definicion del elemento nulo
       def zero
         Matrc::Fraction.new(0, 1)
       end
     end

     #clase que hereda de MatrizDispersa
     class MatDispEntero < Matrc::MatrizDispersa
       #definicion del elemento nulo
       def zero
       	 0
       end
     end

     #clase que hereda de MatrizDispersa
     class MatDispFraction < Matrc::MatrizDispersa
       #definicion del elemento nulo
       def zero
         Matrc::Fraction.new(0, 1)
       end
     end
   end

#expectativas de matrices de enteros
describe "#Matrices de enteros" do
   before :all do

    @m1 = MatEntero.new(2,2)
    @m2 = MatEntero.new(2,2)
    @m3 = MatEntero.new(2,2)
    @md = MatDispEntero.new(2,2)
  

    @m1[0,0] = 1
    @m1[0,1] = 2
    @m1[1,0] = 3
    @m1[1,1] = 4

    @m2[0,0] = 2
    @m2[0,1] = 3
    @m2[1,0] = 4
    @m2[1,1] = 5
    
    @md[0,0] = 2
    @md[1,1] = 5

end
 
   it "Suma de dos matrices" do
     @m3[0,0] = 3
     @m3[0,1] = 5
     @m3[1,0] = 7
     @m3[1,1] = 9

     (@m1+@m2).should == @m3
    end
    
    it "Suma de dos matrices (densa y dispersa)" do
     @m3[0,0] = 3
     @m3[0,1] = 2
     @m3[1,0] = 3
     @m3[1,1] = 9

     (@m1+@md).should == @m3
    end
    
     it "Resta de dos matrices (densa y dispersa)" do
      @m3[0,0] = -1
      @m3[0,1] = 2
      @m3[1,0] = 3
      @m3[1,1] = -1

     (@m1-@md).should == @m3
    end

    it "Resta de dos matrices" do
      @m3[0,0] = -1
      @m3[0,1] = -1
      @m3[1,0] = -1
      @m3[1,1] = -1
     
      (@m1-@m2).should == @m3
    end
    
    it "Maximo de una matriz" do
       @m1.max.should == 4
    end
    it "Minimo de una matriz" do
       @m2.min.should == 2
    end
    
    it "Minimo de una matriz dispersa" do
       @md.min.should == 0
    end
    
    it "Maximo de una matriz dispersa" do
       @md.max.should == 5
    end


end

#expectativas de matrices con fracciones
describe "#Matrices con fracciones" do
   before :all do

    @mf1 = MatFraction.new(2,2)
    @mf2 = MatFraction.new(2,2)
    @mf3 = MatFraction.new(2,2)
    @mf4 = MatFraction.new(2,2)
    @mdf = MatDispFraction.new(2,2)
    @m = MatEntero.new(2,2)

    @mf1[0,0] = Matrc::Fraction.new(1, 4)
    @mf1[0,1] = Matrc::Fraction.new(1, 4)
    @mf1[1,0] = Matrc::Fraction.new(1, 4)
    @mf1[1,1] = Matrc::Fraction.new(1, 4)

    @mf2[0,0] = Matrc::Fraction.new(1, 4)
    @mf2[0,1] = Matrc::Fraction.new(1, 4)
    @mf2[1,0] = Matrc::Fraction.new(1, 4)
    @mf2[1,1] = Matrc::Fraction.new(1, 4)
    
    @m[0,0] = 3
    @m[0,1] = 3
    @m[1,0] = 3
    @m[1,1] = 3
    
    @mdf[1,0] = Matrc::Fraction.new(1, 5)
    @mdf[1,1] = Matrc::Fraction.new(1, 5)
    
    end

    it "Multiplicacion de dos matrices" do
      @mf3[0,0] = Matrc::Fraction.new(1, 8)
      @mf3[0,1] = Matrc::Fraction.new(1, 8)
      @mf3[1,0] = Matrc::Fraction.new(1, 8)
      @mf3[1,1] = Matrc::Fraction.new(1, 8)
    
      (@mf1*@mf2).should == @mf3
    end
    
    it "Multiplicacion de dos matrices (densa y dispersa)" do
      @mf3[0,0] = Matrc::Fraction.new(1,20)
      @mf3[0,1] = Matrc::Fraction.new(1,20)
      @mf3[1,0] = Matrc::Fraction.new(1,20)
      @mf3[1,1] = Matrc::Fraction.new(1,20)
    
      (@mf1*@mdf).should == @mf3
    end
    
    it "Resta de dos matrices (densa y dispersa)" do
      @mf3[0,0] = Matrc::Fraction.new(1,4)
      @mf3[0,1] = Matrc::Fraction.new(1,4)
      @mf3[1,0] = Matrc::Fraction.new(1,20)
      @mf3[1,1] = Matrc::Fraction.new(1,20)
    
      (@mf1-@mdf).should == @mf3
    end

    it "Suma de dos matrices diferentes" do
      @mf4[0,0] = Matrc::Fraction.new(13, 4)
      @mf4[0,1] = Matrc::Fraction.new(13, 4)
      @mf4[1,0] = Matrc::Fraction.new(13, 4)
      @mf4[1,1] = Matrc::Fraction.new(13, 4)
    
      (@m+@mf1).should == @mf4
    end
    
    it "Multiplicacion de dos matrices diferentes" do
      @mf4[0,0] = Matrc::Fraction.new(3, 2)
      @mf4[0,1] = Matrc::Fraction.new(3, 2)
      @mf4[1,0] = Matrc::Fraction.new(3, 2)
      @mf4[1,1] = Matrc::Fraction.new(3, 2)
    
     (@m*@mf1).should == @mf4
    end
    
    it "Maximo de una matriz de fracciones dispersas" do
       @mdf.max.should == 0.2
    end
    it "Minimo de una matriz de fracciones dispersas" do
       @mdf.min.should == 0
    end

    it "Maximo de una matriz de fracciones" do
       @mf1.max.should == 0.25
    end
    it "Minimo de una matriz de fracciones" do
       @mf1.min.should == 0.25
    end
   end	

end








