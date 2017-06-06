require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create!(name: "Surrey", 
  annual_revenue: 224_000, 
  mens_apparel: false,
  womens_apparel: true)
whistler = Store.create!(name: "Whistler", 
  annual_revenue: 1_900_000, 
  mens_apparel: true,
  womens_apparel: false)
yaletown = Store.create!(name: "Yaletown", 
  annual_revenue: 430_000, 
  mens_apparel: true,
  womens_apparel: true)
puts "Store Count: #{Store.count}"
@mens_stores = Store.where("mens_apparel = true")
puts "--------Men's Store---------"
@mens_stores.each do |m|
  print "#{m.name} - "
  puts m.annual_revenue
end
@womens_less_than_1_000_000_revenue = Store.where(["womens_apparel = ? and annual_revenue < ?", true, 1_000_000])
puts "--------Women's Store with less than 1M revenue---------"
@womens_less_than_1_000_000_revenue.each do |w|
  print "#{w.name} - "
  puts w.annual_revenue
end