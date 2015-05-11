module UUID
  class Random
    def get
      self.class.get
    end

    def self.get
      UUID.format(raw)
    end

    def self.raw
      SecureRandom.uuid
    end

    def self.configure(receiver)
      instance = new
      receiver.uuid = instance
      instance
    end
  end
end
