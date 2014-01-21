# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w{bob fred sally james tommy meg allen}.each do |a|
  author = Author.create(name: a)

  rand(2..5).times do |x|
    book = author.books.create(title: "the book #{x}")

    puts book
    100.times do
      book.sales.create(price: rand(120..900), sold_date: Time.now - rand(365).days)
    end
  end
end
