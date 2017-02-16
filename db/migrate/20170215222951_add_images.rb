class AddImages < ActiveRecord::Migration[5.0]
  def self.up
    change_table :images do |t|
      t.attachment :photo_file
    end
  end

  def self.down
    drop_attached_file :images, :photo_file
  end
end
