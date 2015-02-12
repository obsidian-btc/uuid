module UUID
  class Random
    def get
      self.class.get
    end

    def self.get
      uuid = java.util.UUID.randomUUID()
      UUID.format(uuid)
    end

    def self.configure(receiver)
      instance = new
      receiver.random_uuid = instance
      instance
    end
  end
end
