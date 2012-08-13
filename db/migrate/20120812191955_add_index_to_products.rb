class AddIndexToProducts < ActiveRecord::Migration
  def change
    add_index :products, :id
    add_index :products, :category_id
    add_index :products, :base_product_id
  end
end
