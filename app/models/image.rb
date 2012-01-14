# == Schema Information
#
# Table name: images
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime

class Image < ActiveRecord::Base
  attr_accessible :title, :photo

  belongs_to :user

  has_attached_file :photo, :styles => { :large => "800x800>", :medium => "500x500>", :thumb => "100x100>" }
end