class CreateProductPrices < ActiveRecord::Migration
  def change
    create_table :product_prices do |t|
      t.references :product, index: true
      t.references :language_type, index: true
      t.decimal :Price

      t.timestamps null: false
    end
    add_foreign_key :product_prices, :products
    add_foreign_key :product_prices, :language_types
  end
end
