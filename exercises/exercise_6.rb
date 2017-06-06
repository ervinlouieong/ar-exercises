require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Big", last_name: "Data", hourly_rate: 50)
@store1.employees.create(first_name: "Super", last_name: "Man", hourly_rate: 40)
@store2.employees.create(first_name: "Major", last_name: "Minor", hourly_rate: 80)
@store2.employees.create(first_name: "Sir", last_name: "Purr", hourly_rate: 100)