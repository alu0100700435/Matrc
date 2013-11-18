
class MatrizDensa < Matriz

  def initialize(row,col)
    super(row,col)
    @mtdensa = Array.new(row){Array.new(col, 0}
  end

end
