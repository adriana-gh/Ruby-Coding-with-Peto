class Instances
  attr_reader :id

  @@count = 0

  def initialize
    @@count = @@count + 1
    @id = @@count
  end

  def self.put_count
    puts @@count
  end

end

a = Instances.new
b = Instances.new
c = Instances.new
Instances.put_count
puts b.id