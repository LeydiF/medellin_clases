class Dog

  def initialize(raza)
    @raza = raza
  end

  def ladrar
    p "guau guau"
  end

  def cazar
    p "olfateo e intento rastrear..."
  end
end

class Beagle < Dog

  def initialize(raza, nombre)
    super(raza)
    @nombre = nombre
  end

  def cazar
    super
    p "Soy el mejor, siempre encuentro todo!"
  end

  def to_s
    p "#{@raza}, #{@nombre}"
  end

end

Beagle.new("Beagle", "Ted").cazar

Beagle.new("Beagle", "Ted").to_s
