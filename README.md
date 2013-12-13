# Matrc

Uso de Clases que permiten resolver problemas con matrices densas y matrices dispersas.


## Instalación

Añadir esta línea al Gemfile de tu aplicación.

    gem 'matrc'

Y luego ejecutar:

    $ bundle

O instalar por su cuenta mediante el siguiente comando:

    $ gem install matrc

## Uso


Para poder hacer un uso correcto de esta librería en tu código de Ruby, se tendrá que incluir el siguiente fichero:

require "Practica9"

Para la colaboracion en la escritura del código hay que instalar las dependencias de la librería ejecutando el comando:

bundle


## DSL 
Para usar DSL, hay que definirlo de la siguiente forma:
    
    class MatrizEntero < Matrc::MatrizDensa
      def zero
        0
      end
    end
    
    test = Matrc::MatrizDSL.new("Suma") do
      tipo_matriz = MatrizEntero
      opcion = consola
      operando [[1, 2], [4, 5]]
      operando [[9, 8], [6, 5]]
    end 
    
## Gemnasium

https://gemnasium.com/alu0100700435/Matrc


## Contribuir

1. Haz un fork
2. Crea tu rama de características (`git checkout -b my-new-feature`)
3. Haz un commit de tus cambios (`git commit -am 'Add some feature'`)
4. Haz un push a la rama (`git push origin my-new-feature`)
5. Crea un Pull Request
