describe UUID::Random do
  context "Class interface" do
    specify "Random UUID" do
      UUID::Random.get
    end
  end

  context "Instance interface" do
    specify "Random UUID" do
      UUID::Random.new.get
    end
  end
end
