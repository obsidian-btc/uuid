module UUID
  def self.format(uuid)
    uuid.to_s
  end

  def self.random
    Random.get
  end
end
