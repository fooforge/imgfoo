class RemoveImageIdFromAlbums < ActiveRecord::Migration
  def self.up
    remove_column :albums, :image_id
  end

  def self.down
    add_column :albums, :image_id
  end
end
