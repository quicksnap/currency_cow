class Currency < ActiveRecord::Base
  validates_presence_of :rate,:country

  def convert_to_base amount
    ( amount.to_f / self.rate ).round(5)
  end

  def convert_from_base amount
    ( amount.to_f * self.rate ).round(5)
  end
end
