class AddExifDataColumnsToImage < ActiveRecord::Migration
  def self.up
    add_column :images, :model,               :string
    add_column :images, :date_time_original,  :string
    add_column :images, :image_size,          :string
    add_column :images, :focal_length,        :float
    add_column :images, :shutter_speed,       :float
    add_column :images, :aperture,            :float
    add_column :images, :iso,                 :integer
    add_column :images, :white_balance,       :string
    add_column :images, :flash,               :string
    add_column :images, :gps_altitude,        :string
    add_column :images, :gps_latitude,        :string
    add_column :images, :gps_longitude,       :string
  end

  def self.down
    remove_column :images, :model
    remove_column :images, :date_time_original
    remove_column :images, :image_size
    remove_column :images, :focal_length
    remove_column :images, :shutter_speed
    remove_column :images, :aperture
    remove_column :images, :iso
    remove_column :images, :white_balance
    remove_column :images, :flash
    remove_column :images, :gps_altitude
    remove_column :images, :gps_latitude
    remove_column :images, :gps_longitude
  end
end
