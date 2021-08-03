class AddReferencesCategoryToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :product, :category, :bigint
    add_index :product, :category, name: "index_product_on_category"
    add_foreign_key :product, :category, column: "category"
  end
end
