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