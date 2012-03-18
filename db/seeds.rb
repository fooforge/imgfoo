# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

user = User.create!(:name => "admin",
            :email => "admin@foo.com",
            :password => "foobar",
            :password_confirmation => "foobar",
            :admin => true)
user.toggle!(:admin)

5.times do |count|
  album = Album.new
  album.title = "Default album #{count+1}"
  album.user_id = user.id
  album.save!
end

10.times do |count|
  album = Album.new
  album.id = 1 + rand(5)

  image = Image.new
  image.attachment = File.open("public/images/test_image_0#{1+rand(6)}.jpg")
  image.title = "Default image #{count+1}"
  image.album_id = album.id
  image.save!
end
