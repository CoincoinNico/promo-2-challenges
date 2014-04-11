# Encoding: utf-8

require "spec_helper"
require "mc_donald"

describe "#poor_calories_counter" do

  it "should compute number of calories" do
    poor_calories_counter(:Big_Mac, :French_fries, :Coca).must_equal 590
  end
  
end

describe "#calories_counter" do

  it "should compute number of calories" do
    calories_counter(:Big_Mac, :French_fries, :Happy_Meal, :Coca).must_equal 1170
  end

end
