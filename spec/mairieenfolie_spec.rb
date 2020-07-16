require_relative '../lib/mairieenfolie'
describe "get_mairie_email method " do
	it "should return an array with hashes" do
		expect(get_mairie_email).not_to be_empty
	end
end
