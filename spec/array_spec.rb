require 'spec_helper'

describe Array do

  describe '#new' do
    it "should work with no arguments" do
      expect(Array.new).to be_instance_of(Array)
    end

    it "should work with a numerical argument" do
      expect(Array.new(10).size).to eq(10)
    end
  end
end