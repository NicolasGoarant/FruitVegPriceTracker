class CreatePrices < ActiveRecord::Migration[7.2]
  def change
    create_table :prices do |t|
      t.references :product, null: false, foreign_key: true
      t.decimal :price
      t.date :date
      t.string :market_type

      t.timestamps
    end
  end
end
