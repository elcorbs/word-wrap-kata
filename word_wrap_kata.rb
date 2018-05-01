
def wrap(string, max_length)
end




describe "#wrap" do 
	it "splits a string at the maximum length" do
		expect(wrap("whereshouldIsplitthisstring",7)).to eq("wheresh\nouldIsp\nlitthis\nstring")
	end
end
