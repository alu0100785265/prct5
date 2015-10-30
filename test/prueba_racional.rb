 
require '../lib/racional.rb'
require 'test/unit' 

class Test_Fraccion < Test::Unit::TestCase
  
  
  def setup
    @a = Fraccion.new(1,2)
    @b = Fraccion.new(2,2)
    @c = Fraccion.new(4,8)
    @d = Fraccion.new(4,8)
  end

  def test_simple
   
        #suma
       
       assert_equal("3/2",(@a.suma(@b)).to_s,)
       
       
       
    

  end
end
