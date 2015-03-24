# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

RomeSymbol.delete_all
RomeSymbol.create!([
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
