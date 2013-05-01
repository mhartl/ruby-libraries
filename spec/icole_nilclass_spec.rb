require 'spec_helper'

# This is a sample spec file, showing an initial effort to document a Ruby
# class or module (in this case, the Array class) based on the documentation
# at http://ruby-doc.org/.
describe Array do

  describe '#new' do

    context "when called with no arguments" do
      it "should return the empty array" do
        expect(Array.new).to eq []
      end
    end

    context "when called with an integer as an argument" do
      let(:array) { Array.new(3) }

      it "should have length equal to the argument" do
        expect(array.length).to eq 3
      end

      it "should return an array with all nils" do
        expect(array).to eq [nil, nil, nil] 
      end
    end

    context "when called with an integer and a value" do
      let(:array) { Array.new(3, 'foo') }

      it "should have length equal to the first argument" do
        expect(array.length).to eq 3
      end

      it "should return an array consisting of the given value" do
        expect(array).to eq ['foo', 'foo', 'foo']
      end
    end
  end

  describe "ary & other_ary" do
    let(:ary) { [1, 1, 3, 5, 'foo'] }
    let(:other_ary) { [1, 2, 3, 'foo'] }

    it "should return the set intersection of the two arrays" do
      expect(ary & other_ary).to eq [1, 3, 'foo']
    end
  end
end
