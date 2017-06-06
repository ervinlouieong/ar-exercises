require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@sum_annual_revenue = Store.sum(:annual_revenue)
puts "Sum of annual revenue: #{@sum_annual_revenue}"
@avg_annual_revenue = @sum_annual_revenue / Store.count
puts "Average of annual revenue: #{@avg_annual_revenue}"
@more_than_1m_sales = Store.where(["annual_revenue > ?", 1_000_000]).count
puts "Count of stores with more than $1M annual revenue: #{@more_than_1m_sales}"