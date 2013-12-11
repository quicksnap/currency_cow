class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.string :country
      t.decimal :rate, precision: 12, scale: 6

      t.timestamps
    end
  end
end
