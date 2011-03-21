# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

puts 'Loading basic data fro application'

# Common disc Types loaded
puts 'Loading Disc Types...'
if Disctype.all.count == 0
  Disctype.new(:name => 'CD-ROM', :description => 'Capacity: 700 MB').save
  Disctype.new(:name => 'CD-R', :description => 'Capacity: 700 MB').save
  Disctype.new(:name => 'CD-RW', :description => 'Capacity: 700 MB').save
  Disctype.new(:name => 'DVD5', :description => 'Capacity: 4.7 GB').save
  Disctype.new(:name => 'DVD9', :description => 'Capacity: 8.5 GB').save
  Disctype.new(:name => 'DVD18', :description => 'Capacity: 15 GB').save
  Disctype.new(:name => 'BLU-RAY', :description => 'Capacity: 25 GB').save
else
  puts 'Disctypes table is not empty. Skipping.'
end


# Basic Game Generes
puts 'Loading Game Genres...'
if Gamegenere.all.count == 0
  Gamegenere.new(:name => 'FPS', :description => '').save
  Gamegenere.new(:name => 'TPS', :description => '').save
  Gamegenere.new(:name => 'FPS/RPG', :description => '').save
  Gamegenere.new(:name => 'TPS/RPG', :description => '').save
  Gamegenere.new(:name => 'RPG', :description => '').save
  Gamegenere.new(:name => 'Adventure', :description => '').save
  Gamegenere.new(:name => 'Strategy', :description => '').save
  Gamegenere.new(:name => 'Strategy by turns', :description => '').save
  Gamegenere.new(:name => 'Real time strategy', :description => '').save
  Gamegenere.new(:name => 'Puzzle', :description => '').save
  Gamegenere.new(:name => 'Action', :description => '').save
  Gamegenere.new(:name => 'Race/Rally', :description => '').save
  Gamegenere.new(:name => 'Speed Race', :description => '').save
  Gamegenere.new(:name => 'Air Combat', :description => '').save
  Gamegenere.new(:name => 'Simulation', :description => '').save
else
  puts 'Gamegeneres table is not empty. Skipping.'
end


# Basic Movie Generes
puts 'Loading Movie Generes...'
if Moviegenere.all.count == 0
  Moviegenere.new(:name => 'Action', :description => '').save
  Moviegenere.new(:name => 'Drama', :description => '').save
  Moviegenere.new(:name => 'Comedy', :description => '').save
  Moviegenere.new(:name => 'Fantasy', :description => '').save
  Moviegenere.new(:name => 'Adventure', :description => '').save
  Moviegenere.new(:name => 'Sci-Fi', :description => '').save
else
  puts 'Moviegeneres table is not empty. Skipping.'
end


# Different content typoes
puts 'Loading Content Types...'
if Contenttype.all.count == 0
  Contenttype.new(:name => 'Game', :description => '').save
  Contenttype.new(:name => 'Program', :description => '').save
  Contenttype.new(:name => 'Backup', :description => '').save
else
  puts 'Contenttypes table is not empty. Skipping.'
end


# Content Categories
puts 'Loading Content Categories...'
if Contentcategory.all.count == 0
  Contentcategory.new(:name => 'Game', :description => '').save
  Contentcategory.new(:name => 'Tool', :description => '').save
  Contentcategory.new(:name => 'Crack', :description => '').save
  Contentcategory.new(:name => 'Misc Files', :description => '').save
  Contentcategory.new(:name => 'MISC', :description => '').save
  Contentcategory.new(:name => 'Music', :description => '').save
  Contentcategory.new(:name => 'Emulator', :description => '').save
  Contentcategory.new(:name => 'Roms', :description => '').save
  Contentcategory.new(:name => 'Emulator + Roms', :description => '').save
  Contentcategory.new(:name => 'Game + Crack', :description => '').save
  Contentcategory.new(:name => 'General Documents', :description => '').save
  Contentcategory.new(:name => 'Photos', :description => '').save
  Contentcategory.new(:name => 'Suit', :description => '').save
else
  puts 'Contentcategories table '
end


# Roles
puts 'Loading Roles...'
if Role.all.count == 0
  sa = Role.new(:name => 'SuperAdmin')
  sa.save!
  Role.create :name => 'Admin'
  Role.create :name => 'Viewer'
else
  puts 'Roles table is not empty. Skipping.'
end

# Users
if User.all.count == 0
  puts 'Creating first user...'
  User.create :email => 'example@user.com', :password => '123456', :password_confirmation => '123456', :username => 'admin', :role => sa
else
  puts 'Users table is not empty. Skipping.'
end

puts 'Loading Complete!'
