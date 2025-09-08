class AddVarietyToProducts < ActiveRecord::Migration[7.2]
  def change
    add_column :products, :variety, :string
  end
end
