require 'spec_helper'

describe Array do
  it "can be created with no arguments" do
    expect(Array.new).to be_instance_of(Array)
  end

  # it "can be created with a specific size" do
  #   Array.new(9).size.must_equal 10
  # end
end