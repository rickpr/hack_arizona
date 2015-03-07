# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
["Food",
 "Housing",
 "How to get involved",
 "Resources",
 "Majors",
 "Recreation",
 "Sports",
 "Events",
 "Advice",
 "Freshman do's and dont's",
 "U of A > ASU"].each { |name| Category.create name: name }
