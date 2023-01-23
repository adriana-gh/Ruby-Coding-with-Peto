require 'pry'

class Person

  def initialize(name)
    @name = name
  end

  def first_name
    get_first_and_last_name[0]
  end

  def last_name
    get_first_and_last_name[-1]
  end

  private

  def get_first_and_last_name
    @name.split(' ')
  end
end

me = Person.new('Adriana XY Feketeova')
puts me.first_name
puts me.last_name