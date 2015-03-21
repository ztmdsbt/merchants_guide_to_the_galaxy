class RenameColumnInProductPrices < ActiveRecord::Migration
  def change
    rename_column :product_prices, :Price, :price
  end
end
