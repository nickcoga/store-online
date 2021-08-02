class DeleteColumnsToProdutcs < ActiveRecord::Migration[6.1]
  def change
    rename_column :products, :unit_price, :price
    rename_column :products, :links, :url_image
    remove_column :products, :brand, :string
    remove_column :products, :weight, :decimal
    remove_column :products, :model, :string
  end
end
