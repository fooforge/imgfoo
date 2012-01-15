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

  has_attached_file :photo, :styles => { :large  => "800x800>",
                                         :medium => "500x500>",
                                         :thumb  => "100x100>" }
  
  validates_attachment_presence     :photo
  validates_attachment_size         :photo, :less_than => 16.megabyte
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png', 'image/gif'], :message => "Please don't do this to me!"

  def self.random
    self.find(:first, :offset => rand(self.all.size-1))
  end
end