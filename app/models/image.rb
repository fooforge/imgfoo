# == Schema Information
#
# Table name: images
#
#  id                      :integer         not null, primary key
#  title                   :string(255)
#  user_id                 :integer
#  created_at              :datetime
#  updated_at              :datetime
#  attachment_file_name    :string(255)
#  attachment_content_type :string(255)
#  attachment_file_size    :integer
#  attachment_updated_at   :datetime
#

class Image < ActiveRecord::Base
  attr_accessible :title, :attachment, :aperture, :model, :date_time_original, :image_size, :focal_length, :shutter_speed, :iso, :white_balance, :flash, :gps_altitude, :gps_latitude, :gps_longitude

  belongs_to :user
  
  has_attached_file :attachment, :styles => { :large  => "900x900>",
                                              :medium => "500x500>",
                                              :thumb  => "100x100>" }
  
  validates_attachment_presence     :attachment
  validates_attachment_size         :attachment, :less_than => 16.megabyte
  validates_attachment_content_type :attachment, :content_type => ['image/jpeg', 'image/png', 'image/gif'], :message => "Please provide either jpeg, gif or png content!"

  def self.set_exif_data(image)
    @image = image
    # MiniExiftool.command=('exiftool -common')
    @exif_data = MiniExiftool.new @image.attachment.path

    @image.update_attributes(:model => @exif_data.model,
                             :aperture => @exif_data.aperture,
                             :date_time_original => @exif_data.date_time_original,
                             :image_size => @exif_data.image_size,
                             :focal_length => @exif_data.focal_length,
                             :shutter_speed => @exif_data.shutter_speed,
                             :aperture => @exif_data.aperture,
                             :iso => @exif_data.iso,
                             :white_balance => @exif_data.white_balance,
                             :flash => @exif_data.flash,
                             :gps_altitude => @exif_data.gps_altitude,
                             :gps_longitude => @exif_data.gps_longitude,
                             :gps_latitude => @exif_data.gps_latitude)
  end  

  def self.random
    self.find(:first, :offset => rand(self.all.size-1))
  end
end