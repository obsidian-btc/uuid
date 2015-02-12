module ConfiguredRandomUUID
  class Example
    attr_accessor :random_uuid
  end
end

describe ConfiguredRandomUUID::Example do
  context "Configured" do
    let(:random_uuid) { subject.random_uuid }

    before do
      UUID::Random.configure subject
    end

    specify "Receiver has a local clock" do
      expect(clock).to be_instance_of(UUID::Random)
    end
  end
end
