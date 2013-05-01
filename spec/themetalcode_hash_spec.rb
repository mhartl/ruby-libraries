require 'spec_helper'

describe Hash do
	
	describe "#new" do
		
		context "without arguments" do
			
			it "returns an empty hash" do
				expect(Hash.new).to eq({})
			end
		end

		context "with object as an argument" do

			it "returns an empty hash" do
				expect(Hash.new(3)).to eq({})
			end

			it "sets default values equal to the argument" do
				my_hash = Hash.new(3)
				expect(my_hash[:first]).to eq 3
			end

			it "allows an upcase on a string default" do
				my_hash = Hash.new("string")
				expect(my_hash[:first].upcase!).to eq "STRING"
			end
		end

		context "with block as an argument" do
			
			let(:my_hash) { Hash.new { |hash, key| hash[key] = "Dude: #{key}" } }
			
			it "returns an empty hash" do
				expect(my_hash).to eq({})
			end

			it "sets default values according to the block" do
				expect(my_hash[:first]).to eq "Dude: first"
			end

			it "allows an upcase on a string default" do
				expect(my_hash[:first].upcase!).to eq "DUDE: FIRST"
			end
		end
	end
end