class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :title
      t.integer :user_id

      t.timestamps
    end
    add_index :images, [:user_id, :created_at]
  end

  def self.down
    drop_table :images
  end
end
