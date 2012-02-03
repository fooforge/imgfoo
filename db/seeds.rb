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

image = Image.new
image.attachment = File.open('public/images/default.jpg')
image.title = 'Default image'
image.user_id = user.id
image.save!