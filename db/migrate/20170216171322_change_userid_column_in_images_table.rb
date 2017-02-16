class ChangeUseridColumnInImagesTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :images, :user_id, :integer
    add_column :images, :author_id, :integer
  end
end
