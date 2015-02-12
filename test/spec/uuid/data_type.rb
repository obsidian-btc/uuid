describe UUID::Random do
  context "Getting a UUID" do
    let(:uuid) { subject.get }
    specify "UUIDs are strings" do
      expect(uuid).to be_a String
    end
  end
end
