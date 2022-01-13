require "pry"

class Person

  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
  binding.pry
end

bob_attributes = { name: "Bob", hair_color: "Brown" }
bob = Person.new(bob_attributes)