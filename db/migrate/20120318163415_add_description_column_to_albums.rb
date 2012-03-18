class AddDescriptionColumnToAlbums < ActiveRecord::Migration
  def self.up
    add_column :albums, :description, :string, :length => 128
  end

  def self.down
    remove_column :albums, :description
  end
end
