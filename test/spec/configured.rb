module ConfiguredRandomUUID
  class Example
    attr_accessor :uuid
  end
end

describe ConfiguredRandomUUID::Example do
  context "Configured" do
    let(:uuid) { subject.uuid }

    before do
      UUID::Random.configure subject
    end

    specify "Receiver has a random UUID generator" do
      expect(uuid).to be_instance_of(UUID::Random)
    end
  end
end
