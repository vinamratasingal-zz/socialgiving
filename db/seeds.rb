# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = [ "dining hall meal swap", "produce", "condiments", "canned goods", "perishables", "left-overs", "gift card", "bed", "desk", "table", "chair", "dresser", "nightstand", "lamp", "dress", "shirt", "pants", "skirt", "jacket", "appliances", "linens", "kitchen accessories", "headphones", "laptop", "phone", "notebooks"]

categories.each do |category| 
  Category.find_or_create_by_name(:name => category)
end