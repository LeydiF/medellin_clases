$LOAD_PATH << '.'
require "all_about_modules"

class Foo
  include SomeModule
end

Foo.new.some_method