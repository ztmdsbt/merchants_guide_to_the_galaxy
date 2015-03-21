class CreateUnitValues < ActiveRecord::Migration
  def change
    create_table :unit_values do |t|
      t.references :unit, index: true
      t.references :language_type, index: true
      t.decimal :value

      t.timestamps null: false
    end
    add_foreign_key :unit_values, :units
    add_foreign_key :unit_values, :language_types
  end
end
