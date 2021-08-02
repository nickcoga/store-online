class AddDiscountToProdutcs < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :discount, :integer
  end
end
