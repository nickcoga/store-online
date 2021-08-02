class DeleteColumnsToProdutc < ActiveRecord::Migration[6.1]
  def change
    rename_column :product, :unit_price, :price
    rename_column :product, :links, :url_image
    remove_column :product, :brand, :string
    remove_column :product, :weight, :decimal
    remove_column :product, :model, :string
  end
end
