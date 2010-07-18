# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

# Common disc Types loaded
DiscType.new(:name => 'CD-ROM', :description => 'Capacity: 700 MB').save
DiscType.new(:name => 'CD-R', :description => 'Capacity: 700 MB').save
DiscType.new(:name => 'CD-RW', :description => 'Capacity: 700 MB').save
DiscType.new(:name => 'DVD5', :description => 'Capacity: 4.7 GB').save
DiscType.new(:name => 'DVD9', :description => 'Capacity: 8.5 GB').save
DiscType.new(:name => 'DVD18', :description => 'Capacity: 15 GB').save
DiscType.new(:name => 'BLU-RAY', :description => 'Capacity: 25 GB').save

# Basic Game Generes
GameGenere.new(:name => 'FPS', :description => '').save
GameGenere.new(:name => 'TPS', :description => '').save
GameGenere.new(:name => 'FPS/RPG', :description => '').save
GameGenere.new(:name => 'TPS/RPG', :description => '').save
GameGenere.new(:name => 'RPG', :description => '').save
GameGenere.new(:name => 'Adventure', :description => '').save
GameGenere.new(:name => 'Strategy', :description => '').save
GameGenere.new(:name => 'Strategy by turns', :description => '').save
GameGenere.new(:name => 'Real time strategy', :description => '').save
GameGenere.new(:name => 'Puzzle', :description => '').save
GameGenere.new(:name => 'Action', :description => '').save
GameGenere.new(:name => 'Race/Rally', :description => '').save
GameGenere.new(:name => 'Speed Race', :description => '').save
GameGenere.new(:name => 'Air Combat', :description => '').save
GameGenere.new(:name => 'Simulation', :description => '').save

# Basic Movie Generes
MovieGenere.new(:name => 'Action', :description => '').save
MovieGenere.new(:name => 'Drama', :description => '').save
MovieGenere.new(:name => 'Comedy', :description => '').save
MovieGenere.new(:name => 'Fantasy', :description => '').save
MovieGenere.new(:name => 'Adventure', :description => '').save
MovieGenere.new(:name => 'Sci-Fi', :description => '').save


# Different content typoes
ContentType.new(:name => 'Game', :description => '').save
ContentType.new(:name => 'Program', :description => '').save
ContentType.new(:name => 'Backup', :description => '').save


# Content Categories
ContentCategory.new(:name => 'Game', :description => '').save
ContentCategory.new(:name => 'Tool', :description => '').save
ContentCategory.new(:name => 'Crack', :description => '').save
ContentCategory.new(:name => 'Misc Files', :description => '').save
ContentCategory.new(:name => 'MISC', :description => '').save
ContentCategory.new(:name => 'Music', :description => '').save
ContentCategory.new(:name => 'Emulator', :description => '').save
ContentCategory.new(:name => 'Roms', :description => '').save
ContentCategory.new(:name => 'Emulator + Roms', :description => '').save
ContentCategory.new(:name => 'Game + Crack', :description => '').save
ContentCategory.new(:name => 'General Documents', :description => '').save
ContentCategory.new(:name => 'Photos', :description => '').save
ContentCategory.new(:name => 'Suit', :description => '').save

