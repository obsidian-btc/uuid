require_relative 'test_init'

class Thing
  attr_accessor :uuid

  def uuid
    uuid.get
  end

  def self.build
    instance = new
    UUID::Random.configure instance
    instance
  end
end

t = Thing.build
puts t.uuid
