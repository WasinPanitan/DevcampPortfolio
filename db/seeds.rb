# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end

puts "3 Topic Created"


10.times do |blog|
    Blog.create!(
        title: "My Blog #{blog}",
        body: "Paragraph Long #{blog}",
        topic_id: Topic.last.id
    )
end

puts "10 blog post create "

5.times do |skill|
    Skill.create!(
        title: "Rail #{skill}",
        percent_utilized: 15
    )
end

puts "5 skill created "

8.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio #{portfolio_item}",
        subtitle: "Ruby on Rails",
        body: "Go Go HELLO WORLD",
        main_image: "http://place-hold.it/600x400",
        thumb_image: "http://place-hold.it/300x200"
    )
end

1.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio #{portfolio_item}",
        subtitle: "Angular",
        body: "Go Go HELLO WORLD",
        main_image: "http://place-hold.it/600x400",
        thumb_image: "http://place-hold.it/300x200"
    )
end

puts "9 portfolio created "

3.times do |technology|
    Portfolio.last.technologies.create!(
        name: "Technology #{technology}"
    )
end

puts "3 Technologies created "