class AddIndexToCategories < ActiveRecord::Migration
  def change
    add_index :categories, :id
    add_index :categories, :parent_id
    add_index :categories, :name
  end
end
