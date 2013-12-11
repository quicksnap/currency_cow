require 'spec_helper'

describe Currency do
  before :each do
    @currency = create(:currency)
  end

  it "Validates presence of rate" do
    @currency.rate = nil
    @currency.should_not be_valid
    @currency.rate = 123.456
    @currency.should be_valid
  end

  it "Validates precense of country" do
    @currency.country = nil
    @currency.should_not be_valid
    @currency.country = 'EUR'
    @currency.should be_valid
  end

  it "Converts into the base currency" do
    @currency.rate = 2.5
    @currency.convert_to_base(100).should eq(250)
    @currency.rate = 0.333
    @currency.convert_to_base(77).should eq(25.641)
  end

end
