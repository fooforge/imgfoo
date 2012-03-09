class RenameUserIdToAlbumIdOnImages < ActiveRecord::Migration
  def self.up
    rename_column :images, :user_id, :album_id
  end

  def self.down
    rename_column :images, :album_id, :user_id
  end
end
