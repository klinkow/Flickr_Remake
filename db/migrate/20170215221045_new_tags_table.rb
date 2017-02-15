class NewTagsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.column :user_id, :integer
      t.column :image_id, :integer
      t.column :tag, :boolean
    end
  end
end
