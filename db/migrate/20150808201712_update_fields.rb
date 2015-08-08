class UpdateFields < ActiveRecord::Migration
  def change
    rename_column :posts, :description, :content
    rename_column :posts, :writer_id, :author_id
    rename_column :writers, :name, :first_name
    add_column :writers, :last_name, :string
    rename_table :writers, :authors
  end
end
