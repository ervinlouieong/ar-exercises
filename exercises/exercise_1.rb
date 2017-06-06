require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :store_must_have_at_least_men_or_women_apparel

  def store_must_have_at_least_men_or_women_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add("Men's apparel or Women's apparel should be set to true")
    end
  end

  burnaby = Store.create!(name: "Burnaby", 
    annual_revenue: 300_000, 
    mens_apparel: true,
    womens_apparel: true)
  richmond = Store.create!(name: "Richmond", 
    annual_revenue: 1_260_000, 
    mens_apparel: false,
    womens_apparel: true)
  gastown = Store.create!(name: "Gastown", 
    annual_revenue: 190_000, 
    mens_apparel: true,
    womens_apparel: false)
  puts Store.count
end