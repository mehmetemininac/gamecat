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
Disctype.new(:name => 'CD-ROM', :description => 'Capacity: 700 MB').save
Disctype.new(:name => 'CD-R', :description => 'Capacity: 700 MB').save
Disctype.new(:name => 'CD-RW', :description => 'Capacity: 700 MB').save
Disctype.new(:name => 'DVD5', :description => 'Capacity: 4.7 GB').save
Disctype.new(:name => 'DVD9', :description => 'Capacity: 8.5 GB').save
Disctype.new(:name => 'DVD18', :description => 'Capacity: 15 GB').save
Disctype.new(:name => 'BLU-RAY', :description => 'Capacity: 25 GB').save

# Basic Game Generes
puts 'Loading Game Genres...'
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

# Basic Movie Generes
puts 'Loading Movie Generes...'
Moviegenere.new(:name => 'Action', :description => '').save
Moviegenere.new(:name => 'Drama', :description => '').save
Moviegenere.new(:name => 'Comedy', :description => '').save
Moviegenere.new(:name => 'Fantasy', :description => '').save
Moviegenere.new(:name => 'Adventure', :description => '').save
Moviegenere.new(:name => 'Sci-Fi', :description => '').save

# Different content typoes
puts 'Loading Content Types...'
Contenttype.new(:name => 'Game', :description => '').save
Contenttype.new(:name => 'Program', :description => '').save
Contenttype.new(:name => 'Backup', :description => '').save

# Content Categories
puts 'Loading Content Categories...'
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

puts 'Loading Complete!'