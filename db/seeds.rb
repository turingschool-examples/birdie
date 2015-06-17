# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

class Seeder
  def self.run
    new.build_posts
  end

  def build_posts
    puts "Building posts..."
    20.times do
      post = Post.create!(description: Faker::Lorem.paragraph(1))
      puts "Post #{post.id} created."
    end
  end
end

Seeder.run
