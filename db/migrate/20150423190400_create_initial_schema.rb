require 'migration_data'

class CreateInitialSchema < ActiveRecord::Migration
  def self.up
    # These are extensions that must be enabled in order to support this database
    enable_extension "plpgsql"

    create_table "language_symbols", force: :cascade do |t|
      t.string   "name"
      t.integer  "language_type_id"
      t.datetime "created_at",       null: false
      t.datetime "updated_at",       null: false
    end

    add_index "language_symbols", ["language_type_id"], name: "index_langage_symbols_on_language_type_id", using: :btree

    create_table "language_types", force: :cascade do |t|
      t.string   "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    create_table "product_prices", force: :cascade do |t|
      t.integer  "product_id"
      t.integer  "language_type_id"
      t.decimal  "price"
      t.datetime "created_at",       null: false
      t.datetime "updated_at",       null: false
    end

    add_index "product_prices", ["language_type_id"], name: "index_product_prices_on_language_type_id", using: :btree
    add_index "product_prices", ["product_id"], name: "index_product_prices_on_product_id", using: :btree

    create_table "products", force: :cascade do |t|
      t.string   "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    create_table "roman_symbols", force: :cascade do |t|
      t.string   "name"
      t.integer  "value"
      t.string   "description"
      t.datetime "created_at",  null: false
      t.datetime "updated_at",  null: false
    end

    create_table "symbol_correspondings", force: :cascade do |t|
      t.integer  "roman_symbol_id"
      t.datetime "created_at",         null: false
      t.datetime "updated_at",         null: false
      t.integer  "language_symbol_id"
    end

    add_index "symbol_correspondings", ["roman_symbol_id"], name: "index_symbol_correspondings_on_roman_symbol_id", using: :btree

    create_table "unit_values", force: :cascade do |t|
      t.integer  "unit_id"
      t.integer  "language_type_id"
      t.decimal  "value"
      t.datetime "created_at",       null: false
      t.datetime "updated_at",       null: false
    end

    add_index "unit_values", ["language_type_id"], name: "index_unit_values_on_language_type_id", using: :btree
    add_index "unit_values", ["unit_id"], name: "index_unit_values_on_unit_id", using: :btree

    create_table "units", force: :cascade do |t|
      t.string   "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    add_foreign_key "language_symbols", "language_types"
    add_foreign_key "product_prices", "language_types"
    add_foreign_key "product_prices", "products"
    add_foreign_key "symbol_correspondings", "language_symbols"
    add_foreign_key "symbol_correspondings", "roman_symbols"
    add_foreign_key "unit_values", "language_types"
    add_foreign_key "unit_values", "units"
  end

  def data
    RomanSymbol.delete_all
    RomanSymbol.create!([
                          {name: 'I', value: 1},
                          {name: 'IV', value: 4},
                          {name: 'V', value: 5},
                          {name: 'IX', value: 9},
                          {name: 'X', value: 10},
                          {name: 'XL', value: 40},
                          {name: 'L', value: 50},
                          {name: 'XC', value: 90},
                          {name: 'C', value: 100},
                          {name: 'CD', value: 400},
                          {name: 'D', value: 500},
                          {name: 'CM', value: 900},
                          {name: 'M', value: 1000}
                        ])

    LanguageType.delete_all
    LanguageType.create(name: 'Galaxy')
  end

  def self.down

  end
end
