# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

RomeSymbol.delete_all()
RomeSymbol = RomeSymbol.create!([
                                    {name: 'I', value: 1},
                                    {name: 'V', value: 5},
                                    {name: 'X', value: 10},
                                    {name: 'L', value: 50},
                                    {name: 'C', value: 100},
                                    {name: 'D', value: 500},
                                    {name: 'M', value: 1000}
                                ])
