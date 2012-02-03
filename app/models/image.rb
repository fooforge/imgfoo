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
  attr_accessible :title, :attachment

  belongs_to :user
  has_attached_file :attachment, :styles => { :large  => "900x900>",
                                              :medium => "500x500>",
                                              :thumb  => "100x100>" }
  
  validates_attachment_presence     :attachment
  validates_attachment_size         :attachment, :less_than => 16.megabyte
  validates_attachment_content_type :attachment, :content_type => ['image/jpeg', 'image/png', 'image/gif'], :message => "Please provide either jpeg, gif or png content!"

  def self.random
    self.find(:first, :offset => rand(self.all.size-1))
  end
end