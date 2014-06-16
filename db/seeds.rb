# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
MoonPhase.delete_all
MoonPhase.create(name: "New Moon", image: m1.gif);
MoonPhase.create(name: "Waxing crescent moon", image: m5.gif);