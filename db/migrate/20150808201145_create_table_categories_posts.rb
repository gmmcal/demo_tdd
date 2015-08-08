class CreateTableCategoriesPosts < ActiveRecord::Migration
  def change
    create_table :categories_posts do |t|
      t.belongs_to :category, index: true, foreign_key: true
      t.belongs_to :post, index: true, foreign_key: true
    end
  end
end
