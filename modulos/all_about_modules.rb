module SomeModule

	def some_method
		p "Some method..."
	end

end

module AnotherModule
	CONSTANTE = 1

	class ClassInsideModule
	end

	def foo
		p "Some method"
	end

end

class Test
	include AnotherModule
end

p AnotherModule::ClassInsideModule.new
p AnotherModule::CONSTANTE

p Test::CONSTANTE

p Test::ClassInsideModule.new
Test.new.foo