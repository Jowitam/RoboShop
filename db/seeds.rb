# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
8.times do
    Category.create! name: Faker::Hacker.ingverb.capitalize
end

category_ids = Category.pluck(:id)

print "Product "
200.times do
    product = Product.create! name: "#{Faker::Hacker.verb} #{Faker::Hacker.noun}".capitalize,
        description: Faker::Hacker.say_something_smart,
        long_description: Faker::Lorem.paragraphs(3).join("\n\n"),
        category_id: category_ids.sample,
        price: Faker::Number.decimal(3,2)

    product.remote_photo_url = Faker::Avatar.image(
        slug: product.name.parameterize,
        size: '640x480',
        format:'jpg',
        set: "#{[1,2,3].sample}", 
        bgset: "#{[1,2].sample}"
    )
    product.save
    print "."
end
puts