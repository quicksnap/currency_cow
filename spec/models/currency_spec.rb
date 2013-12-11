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

  it "Converts to base currency to 5 decimal places" do
    @currency.rate = 2.5
    @currency.convert_to_base(100).should eq(250)
    @currency.rate = 0.3
    @currency.convert_to_base(10).should eq(3)
  end

  it "Converts from base to 5 decimal places" do
    @currency.rate = 2.5
    @currency.convert_from_base(250).should eq(100)
    @currency.rate = 0.3
    @currency.convert_from_base(10).should eq(33.33333)
  end

end
