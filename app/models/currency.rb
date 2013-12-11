class Currency < ActiveRecord::Base
  validates_presence_of :rate,:country

  def convert_to_base amount
    ( amount * self.rate ).to_f.round(5)
  end

  def convert_from_base amount
    ( amount / self.rate ).to_f.round(5)
  end
end
