class Currency < ActiveRecord::Base
  validates_presence_of :rate,:country

  def convert_to_base amount
    amount * self.rate
  end
end
