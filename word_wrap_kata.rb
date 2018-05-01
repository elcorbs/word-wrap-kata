
def wrap(string, max_length)
	return string if string.length <= max_length
	position = string[0..max_length].rindex(" ") ||  max_length
		string[0...position] +"\n" +wrap(string[position.. -1].lstrip,max_length)

end




describe "#wrap" do 
	it "returns a string if less than max length" do 
		expect(wrap("string", 7)).to eq("string")
	end
	it "splits a string at the maximum length" do
		expect(wrap("whereshouldIsplitthisstring",7)).to eq("wheresh\nouldIsp\nlitthis\nstring")
	end
	it "splits at a whitespace if word is less than max length" do 
		expect(wrap("where split", 5)).to eq("where\nsplit")
	end
	it "strips each line of whitespace at beginning of line" do 
		expect(wrap("where splits",7)).to eq("where\nsplits")
	end
	it "strips each line of whitespace at end of line" do 
		expect(wrap("where splits",6)).to eq("where\nsplits")
	end
	it "it fits two words on a line" do 
		expect(wrap("where splits the string",12)).to eq("where splits\nthe string")
	end

end
