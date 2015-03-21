class CreateRomeSymbols < ActiveRecord::Migration
  def change
    create_table :rome_symbols do |t|
      t.string :name
      t.integer :value
      t.string :description


      t.timestamps null: false
    end
  end
end
