# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
3.times do
  my_category = Category.create(title: Faker::Book.genre)
  3.times do
    my_task = Task.new(title: Faker::Book.title,
                      deadline: Faker::Date.forward(23),
                      image: Faker::Avatar.image)
    my_task.category = my_category
    my_task.save
  end
end

10.times do |index|
	email = Email.create!(object: "object#{index}", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
		      											   Aliquam commodo augue mauris, quis volutpat augue eleifend 
		      											   nec. Nunc consequat justo in convallis consectetur. In pharetra 
		      											   magna quis placerat imperdiet. Morbi ac gravida ante. Praesent 
		      											   porttitor quis diam vitae venenatis. Interdum et malesuada fames ac 
		      											   ante ipsum primis in faucibus. Donec nisi eros, vestibulum vel luctus 
		      											   posuere, iaculis nec elit. Sed eget ipsum justo. Ut dignissim eu elit 
		      											   id commodo. Sed venenatis nibh mauris, vel cursus quam dapibus non. 
		      											   Ut nec magna in ante tempor dictum. Nam euismod nec dui sed varius. Ut 
		      											   nec rutrum turpis, non pretium ipsum. Nunc condimentum euismod dui, ac 
		      											   porttitor quam placerat eget.")
end

