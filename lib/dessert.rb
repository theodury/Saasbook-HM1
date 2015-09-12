# Homework perform in binomial by
# Antônio Lima
# Théo DURY

class Dessert
  
  attr_accessor :name, :calories 	
  
  def initialize(name, calories)
    @name = name
	  @calories = calories
  end
  
  def healthy?
    true if calories < 200
  end
  
  def delicious?
    true if self.instance_of? Dessert
  end
  
end

class JellyBean < Dessert
  
  attr_accessor :flavor
  
  def initialize(flavor)
    @flavor = flavor
    super(flavor+" jelly bean",5)
  end
  
  def delicious?
	  return false if @flavor == "licorice"
	  true
  end

end
