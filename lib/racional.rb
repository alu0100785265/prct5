require '../lib/gcd.rb'

class Fraccion
  
  attr_reader :numerador, :denominador	
  
 
  def initialize (numerador, denominador)
   
    @numerador = numerador						
    @denominador = denominador
  
  end
  
  #mcd=maximo comun divisor
  #mcm=minimo comun multiplo
  def simplificar (fraccion)
    mcd = gcd(fraccion.numerador, fraccion.denominador)
    Fraccion.new( fraccion.numerador/mcd , fraccion.denominador/mcd)
    
    
  end
  
  
  def to_s
    "#{@numerador}/#{@denominador}"
    
  end
  
  #Suma de fracciones
  def suma(fraccion)
    
      
      mcm = (@denominador * fraccion.denominador)/gcd(@denominador, fraccion.denominador)
      fracc1 = Fraccion.new((mcm/@denominador) * @numerador, mcm)
      fracc2 = Fraccion.new((mcm/fraccion.denominador) * fraccion.numerador, mcm)
      simplificar(Fraccion.new(fracc1.numerador + fracc2.numerador, mcm))
      
  end
  
  #Resta de fracciones
  def resta(fraccion)
      mcm = (@denominador * fraccion.denominador)/gcd(@denominador, fraccion.denominador)
      fracc1 = Fraccion.new((mcm/@denominador) * @numerador, mcm)
      fracc2 = Fraccion.new((mcm/fraccion.denominador) * fraccion.numerador, mcm)
      simplificar(Fraccion.new(fracc1.numerador - fracc2.numerador, mcm))
  end

   #Producto de fracciones
   def producto(fraccion)
      simplificar(Fraccion.new(@numerador * fraccion.numerador, @denominador * fraccion.denominador))
   end

   #División de fracciones
   def division(fraccion)
      simplificar(Fraccion.new(@numerador * fraccion.denominador, @denominador * fraccion.numerador))
   end
end


