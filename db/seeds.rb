# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'database_cleaner'
DatabaseCleaner.clean_with :truncation
puts "DB is clean"

puts "### tasks list with due date ###"
tasks_list = ['Ranger ma chambre',
              'Acheter un hélicoptère',
              'Sortir mamie',
              'Sortir bébé du congel',
              'Sortir mémé des orties']
tasks_list.each do |task|
  task = Task.create(title: task, due_date: Date.today - Date.today.wday + Random.new.rand(1..7))
  puts "#{task.due_date} - #{task.title}"
end

puts "### tasks list without due date ###"
tasks_list = ["Quand j'aurai le temps",
              "Un jour"]
tasks_list.each do |task|
  task = Task.create(title: task)
  puts "#{task.due_date} - #{task.title}"
end