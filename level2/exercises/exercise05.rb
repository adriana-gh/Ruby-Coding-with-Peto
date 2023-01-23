module Hello
  def say_hello
    puts 'Hello from module'
  end
end

class HelloWithInclude
  include Hello
end

class HelloWithExtend
  extend Hello
end

HelloWithInclude.new.say_hello
HelloWithExtend.say_hello