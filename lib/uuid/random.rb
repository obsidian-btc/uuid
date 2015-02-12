module UUID
  class Random
    def get
      self.class.get
    end

    def self.get
      UUID.format(raw)
    end

    def self.raw
      java.util.UUID.randomUUID()
    end

    def self.configure(receiver)
      instance = new
      receiver.random_uuid = instance
      instance
    end
  end
end
