class AddDiscountToProdutc < ActiveRecord::Migration[6.1]
  def change
    add_column :product, :discount, :integer
  end
end
