class AddWriterToPost < ActiveRecord::Migration
  def change
    add_reference :posts, :writer, index: true, foreign_key: true
  end
end
