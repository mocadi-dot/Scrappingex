require_relative '../lib/cryptocurrencies'
describe "get_cryptos method " do
	it "should return an array with hashes" do
		expect(get_cryptos).not_to be_empty
	end
end
