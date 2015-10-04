describe UUID::Random::Substitute do
  context "No assigned UUID" do
    let(:uuid) { UUID::Random::Substitute.build }

    context "UUID" do
      specify "Is nil" do
        expect(uuid.get).to be nil
      end
    end
  end

  context "Assigned UUID" do
    let(:uuid) { UUID::Random::Substitute.build }

    context "UUID" do
      specify "Is nil" do
        val = 'some uuid'
        uuid.set val

        expect(uuid.get).to eq val
      end
    end
  end
end
