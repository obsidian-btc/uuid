# describe Clock::Local do
#   let(:now) { Time.now }

#   context "Local" do
#     specify "Current time" do
#       expect(subject.now(now)).to_not be_utc
#     end
#   end

#   context "ISO 8601" do
#     let(:iso8601_now) { now.iso8601(3) }

#     specify "Time represented as a sting" do
#       expect(subject.to_s(now)).to eq(iso8601_now)
#     end

#     context "String representation converted to time" do
#       let(:converted_now) { Clock.parse(iso8601_now) }

#       specify "Remains local" do
#         expect(converted_now).to_not be_utc
#       end
#     end
#   end
# end