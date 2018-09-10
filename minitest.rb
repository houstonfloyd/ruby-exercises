
  
class Other
  def initialize
    @test = 0
  end
end

class Numeric < Other
end

value = Numeric.new
p value.class
