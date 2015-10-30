 
require './lib/racional.rb'
require 'test/unit' 

class TestFraccion < Test::Unit::TestCase
  
  
  def setup
    @a = Fraccion.new(1,2)
    @b = Fraccion.new(2,2)
    @c = Fraccion.new(4,8)
    @d = Fraccion.new(4,8)
  end

  def test_simple
   
        #suma
       
       assert_equal("3/2",(@a.+(@b)).to_s,)
       
       #resta
       
       assert_equal(Fraccion.new(-1,2).to_s,(@a.-(@b)).to_s)
       
       #division
       assert_equal(Fraccion.new(1,2).to_s,(@a./(@b)).to_s)
       
       #multi
       assert_equal(Fraccion.new(1,2).to_s,(@a.*(@b)).to_s)
       assert_equal(Fraccion.new(1,4).to_s,(@c.*(@d)).to_s)
    

  end
end
