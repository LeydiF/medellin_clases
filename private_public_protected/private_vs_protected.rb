class Parent

  def este_es_publico
    p "Lo pueden llamar las instancias de Parent y sus subclases"
  end

  protected

  def este_es_protegido
    p "Lo pueden llamar sus subclases"
  end

  private
  def name
    'Mommy'
  end
end

class Child < Parent
  def get_parent_name
    # Implicit receiver
    puts name

    # Explicit receiver
    puts self.name rescue puts 'NoMethodError'

    # Explicit receiver
    puts Parent.new.name rescue puts 'NoMethodError'

    # Explicit receiver
    Parent.new.este_es_protegido rescue puts 'NoMethodError'
  end
end

Child.new.get_parent_name

Parent.new.este_es_publico

Child.new.este_es_publico

Child.new.este_es_protegido

Parent.new.name #ERROR: el metodo name es privado!
