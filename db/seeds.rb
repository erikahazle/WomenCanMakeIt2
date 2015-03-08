# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

blog_project = Project.new(name: 'Build a blog')
File.open('./spec/fixtures/build_a_blog.txt') do |f|
  blog_project.tutorial = f
  blog_project.save
end

ecommerce_project = Project.new(name: 'Build an e-commerce site')
File.open('./spec/fixtures/build_an_ecommerce_site.txt') do |f|
  ecommerce_project.tutorial = f
  ecommerce_project.save
end