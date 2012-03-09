# == Schema Information
#
# Table name: albums
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Album < ActiveRecord::Base
  attr_accessible :title

  belongs_to :user
  has_many :images  
end
